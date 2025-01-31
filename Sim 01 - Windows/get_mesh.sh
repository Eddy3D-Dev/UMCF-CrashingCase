#!/bin/bash

# Call the blueCFD batch file using cmd.exe and export the variables to Git Bash
eval "$(cmd.exe /c 'C:\Program Files\blueCFD-Core-2020\setvars_OF8.bat' | tr -d '\r' | awk '/=/ {print "export " $1}')"

# Add msys64 to the PATH
export PATH="$HOME/msys64/usr/bin:$PATH"

# Start logging and showing output
echo "Starting mesh creation process..."

blockMesh 2>&1 | tee log.blockMesh
surfaceFeatures 2>&1 | tee log.surfaceFeatures
cp -r constant/polyMesh constant/polyMesh.bckp

echo "Creating mesh for air region"
cp system/snappyHexMeshDict.air system/snappyHexMeshDict
snappyHexMesh -overwrite 2>&1 | tee log.snappyHexMesh.air
rm -rf constant/air/polyMesh
mv constant/polyMesh constant/air/
changeDictionary -region air 2>&1 | tee log.changeDictionary.air

echo "Creating mesh for vegetation region"
cp -r constant/polyMesh.bckp constant/polyMesh
cp system/snappyHexMeshDict.veg system/snappyHexMeshDict
snappyHexMesh -overwrite 2>&1 | tee log.snappyHexMesh.veg
rm -rf constant/vegetation/polyMesh
mv constant/polyMesh constant/vegetation/
createPatch -region vegetation -overwrite 2>&1 | tee log.createPatch.veg
changeDictionary -region vegetation 2>&1 | tee log.changeDictionary.veg

rm -rf constant/polyMesh.bckp

echo "Creating mesh for solid regions"
extrudeMesh 2>&1 | tee log.extrudeMesh
rm -rf constant/buildings/polyMesh
mv constant/polyMesh constant/buildings/
createPatch -region buildings -overwrite 2>&1 | tee log.createPatch
changeDictionary -region buildings 2>&1 | tee log.changeDictionary
topoSet -region buildings 2>&1 | tee log.topoSet.buildings

topoSet -region air 2>&1 | tee log.topoSet.air
setFields -region air 2>&1 | tee log.setFields.air

echo "Mesh creation process completed."
