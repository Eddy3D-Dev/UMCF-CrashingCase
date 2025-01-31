blockMesh > log.blockMesh 2>&1
surfaceFeatures > log.surfaceFeatures 2>&1
cp -r constant/polyMesh constant/polyMesh.bckp

echo "Creating mesh for air region"
cp system/snappyHexMeshDict.air system/snappyHexMeshDict
snappyHexMesh -overwrite > log.snappyHexMesh.air 2>&1
rm -rf constant/air/polyMesh
mv constant/polyMesh constant/air/
changeDictionary -region air > log.changeDictionary.air 2>&1

echo "Creating mesh for vegetation region"
cp -r constant/polyMesh.bckp constant/polyMesh
cp system/snappyHexMeshDict.veg system/snappyHexMeshDict
snappyHexMesh -overwrite > log.snappyHexMesh.veg 2>&1
rm -rf constant/vegetation/polyMesh
mv constant/polyMesh constant/vegetation/
createPatch -region vegetation -overwrite > log.createPatch.veg 2>&1
changeDictionary -region vegetation > log.changeDictionary.veg 2>&1

rm -rf constant/polyMesh.bckp

echo "Creating mesh for solid regions"
extrudeMesh > log.extrudeMesh 2>&1
rm -rf constant/buildings/polyMesh
mv constant/polyMesh constant/buildings/
createPatch -region buildings -overwrite > log.createPatch 2>&1
changeDictionary -region buildings > log.changeDictionary 2>&1
topoSet -region buildings 2>&1

topoSet -region air
setFields -region air
