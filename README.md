# UMCF-CrashingCase

This repository contains an OpenFOAM - urbanMicroclimateFoam case we initially attempted to run on blueCFD interface. Then we attempted to run using WSL (Ubuntu 20.04 and OpenFOAM 8) and it worked.

When running the simulation on Windows, the process breaks when the Vegetation region is found:

```
Vegetation region found...
Updating T boundary fields...
Generating stack trace...
```

This is the backtrace:

```
Backtrace:
        ZN10StackTraceC1Ev [0x626c1855+0x25]
                 module: C:\Program Files\blueCFD-Core-2020\ThirdParty-8\platforms\mingw_w64GccDPInt32\lib\libstack_trace.dll
        ZN4Foam5error10printStackERNS_7OstreamE [0x6c30ae5a+0x23a]
                 module: C:\Program Files\blueCFD-Core-2020\OpenFOAM-8\platforms\mingw_w64GccDPInt32Opt\lib\libOpenFOAM.dll
        ZN4Foam7sigSegv14sigSegvHandlerEi [0x6c30bb03+0x33]
                 module: C:\Program Files\blueCFD-Core-2020\OpenFOAM-8\platforms\mingw_w64GccDPInt32Opt\lib\libOpenFOAM.dll
        (No symbol) [0x4087e2]
                 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\bin\urbanMicroclimateFoam.exe
        _C_specific_handler [0x7ff9f323bdbf+0x9f]
                 module: C:\WINDOWS\System32\msvcrt.dll
        0_chkstk [0x7ff9f3f63e5f+0x9f]
                 module: C:\WINDOWS\SYSTEM32\ntdll.dll
        RtlWow64GetCurrentCpuArea [0x7ff9f3e1f358+0xa98]
                 module: C:\WINDOWS\SYSTEM32\ntdll.dll
        KiUserExceptionDispatcher [0x7ff9f3f6379e+0x2e]
                 module: C:\WINDOWS\SYSTEM32\ntdll.dll
        ZN4Foam15mappedPatchBase9facePointERKNS_8polyMeshEiNS1_17cellDecompositionE [0x6aa8d97a+0x16a]
                 module: C:\Program Files\blueCFD-Core-2020\OpenFOAM-8\platforms\mingw_w64GccDPInt32Opt\lib\libmeshTools.dll
        ZNK4Foam15mappedPatchBase10facePointsERKNS_9polyPatchE [0x6aa8fed3+0xa3]
                 module: C:\Program Files\blueCFD-Core-2020\OpenFOAM-8\platforms\mingw_w64GccDPInt32Opt\lib\libmeshTools.dll
        ZNK4Foam15mappedPatchBase11calcMappingEv [0x6aa94534+0x84]
                 module: C:\Program Files\blueCFD-Core-2020\OpenFOAM-8\platforms\mingw_w64GccDPInt32Opt\lib\libmeshTools.dll
        ZNK4Foam15mappedPatchBase10distributeIdEEvRNS_4ListIT_EE [0x6d31e005+0x455]
                 module: C:\Program Files\blueCFD-Core-2020\OpenFOAM-8\platforms\mingw_w64GccDPInt32Opt\lib\libfiniteVolume.dll
        ZNK4Foam20mappedPatchFieldBaseIdE11mappedFieldEv [0x6d34ef40+0x6d0]
                 module: C:\Program Files\blueCFD-Core-2020\OpenFOAM-8\platforms\mingw_w64GccDPInt32Opt\lib\libfiniteVolume.dll
        ZN4Foam28mappedFixedValueFvPatchFieldIdE12updateCoeffsEv [0x6cfafd5a+0x3a]
                 module: C:\Program Files\blueCFD-Core-2020\OpenFOAM-8\platforms\mingw_w64GccDPInt32Opt\lib\libfiniteVolume.dll
        ZN4Foam12fvPatchFieldIdE8evaluateENS_8UPstream10commsTypesE [0x6ce521b7+0x37]
                 module: C:\Program Files\blueCFD-Core-2020\OpenFOAM-8\platforms\mingw_w64GccDPInt32Opt\lib\libfiniteVolume.dll
        (No symbol) [0x41f84c]
                 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\bin\urbanMicroclimateFoam.exe
        (No symbol) [0x47ac78]
                 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\bin\urbanMicroclimateFoam.exe
        (No symbol) [0x4013c1]
                 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\bin\urbanMicroclimateFoam.exe
        (No symbol) [0x4014f6]
                 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\bin\urbanMicroclimateFoam.exe
        BaseThreadInitThunk [0x7ff9f316e8d7+0x17]
                 module: C:\WINDOWS\System32\KERNEL32.DLL
        RtlUserThreadStart [0x7ff9f3edfbcc+0x2c]
                 module: C:\WINDOWS\SYSTEM32\ntdll.dll
```

### Working on WSL

We performed the meshing and the simulation process in Ubuntu 20.04 environment. To install OpenFOAM 8 (which is compatible with that version of Ubuntu) we executed the following commands on the Ubuntu 20.04.6 LTS terminal (according to https://openfoam.org/download/8-ubuntu/):

```
sudo sh -c "wget -O - https://dl.openfoam.org/gpg.key | apt-key add -"
sudo add-apt-repository http://dl.openfoam.org/ubuntu
```

```
sudo apt-get update
```

```
sudo apt-get -y install openfoam8
```

After that, we cloned and compiled the urbanMicroclimateFoam solver:

```
git clone https://github.com/OpenFOAM-BuildingPhysics/urbanMicroclimateFoam.git
cd urbanMicroclimateFoam
git checkout tags/of-org_v8.0
./Allwmake

```

The 05-umcf.log file in the SIM 01 - WSL folder contains the details for the successful run.


---

## UMCF compilation error

This error shows up [when attempting to compile](https://github.com/SustainableUrbanSystemsLab/urbanMicroClimateFoam-BlueCFD/tree/of-org_v8.0-bluecfd) UMCF via BlueCFD.

![image](https://github.com/user-attachments/assets/891b1206-8fd1-4d49-a3a9-9bb1abd51aa8)
