# UMCF-CrashingCase

This repository contains an OpenFOAM - urbanMicroclimateFoam case we initially attempted to run on blueCFD interface. Then we attempted to run using WSL (Ubuntu 20.04 and OpenFOAM 8) and it worked.

# Update: Added new case folder with some fixes to the meshing process. Now it will crash when trying to solve for the air region instead:
The case is stored in the following link (due to file sizes): https://www.dropbox.com/scl/fo/a8nzartpsbg0d18svhu1o/ACdI7dV8NQWRZlhd0gkGa04?rlkey=ffe8qx11lyziwbhmb0xowat2t&st=w6yh48mu&dl=0

```
Solving for fluid region air

SIMPLE: Convergence criteria found
        p_rgh: tolerance 0.001
        U: tolerance 0.0001
        h: tolerance 0.0001
        w: tolerance 0.0001
        "(k|epsilon|omega)": tolerance 0.0001
        Tl: tolerance 0.0001

Internal iteration number: 1
DILUPBiCGStab:  Solving for Ux, Initial residual = 1, Final residual = 0.0037438716, No Iterations 1
DILUPBiCGStab:  Solving for Uy, Initial residual = 1, Final residual = 0.0098984921, No Iterations 2
DILUPBiCGStab:  Solving for Uz, Initial residual = 1, Final residual = 0.0045051663, No Iterations 2
[6] Generating stack trace...
[0] Generating stack trace...
[6] 

Backtrace:
	ZN10StackTraceC1Ev [0x626c1855+0x25]
		 module: C:\Program Files\blueCFD-Core-2020\ThirdParty-8\platforms\mingw_w64GccDPInt32\lib\libstack_trace.dll
	ZN4Foam5error10printStackERNS_7OstreamE [0x6c30ae5a+0x23a]
		 module: C:\Program Files\blueCFD-Core-2020\OpenFOAM-8\platforms\mingw_w64GccDPInt32Opt\lib\libOpenFOAM.dll
	ZN4Foam7sigSegv14sigSegvHandlerEi [0x6c30bb03+0x33]
		 module: C:\Program Files\blueCFD-Core-2020\OpenFOAM-8\platforms\mingw_w64GccDPInt32Opt\lib\libOpenFOAM.dll
	(No symbol) [0x4087e2]
		 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\bin\urbanMicroClimateFoam.exe
	_C_specific_handler [0x7ffa2ca0bdbf+0x9f]
		 module: C:\WINDOWS\System32\msvcrt.dll
	0_chkstk [0x7ffa2d1e3f2f+0x9f]
		 module: C:\WINDOWS\SYSTEM32\ntdll.dll
	RtlWow64GetCurrentCpuArea [0x7ffa2d093b78+0xa98]
		 module: C:\WINDOWS\SYSTEM32\ntdll.dll
	KiUserExceptionDispatcher [0x7ffa2d1e386e+0x2e]
		 module: C:\WINDOWS\SYSTEM32\ntdll.dll
	ZN4Foam15mappedPatchBase9facePointERKNS_8polyMeshEiNS1_17cellDecompositionE [0x6aa8d97a+0x16a]
		 module: C:\Program Files\blueCFD-Core-2020\OpenFOAM-8\platforms\mingw_w64GccDPInt32Opt\lib\libmeshTools.dll
	ZNK4Foam15mappedPatchBase10facePointsERKNS_9polyPatchE [0x6aa8fed3+0xa3]
		 module: C:\Program Files\blueCFD-Core-2020\OpenFOAM-8\platforms\mingw_w64GccDPInt32Opt\lib\libmeshTools.dll
	ZNK4Foam15mappedPatchBase11calcMappingEv [0x6aa94534+0x84]
		 module: C:\Program Files\blueCFD-Core-2020\OpenFOAM-8\platforms\mingw_w64GccDPInt32Opt\lib\libmeshTools.dll
	ZNK4Foam15mappedPatchBase10distributeIdEEvRNS_4ListIT_EE [0x6ed44eb5+0x455]
		 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\lib\libsolarLoad.dll
	ZN4Foam12compressible52CFDHAMfluidTemperatureCoupledMixedFvPatchScalarField12updateCoeffsEv [0x6ece6b3a+0x13a]
		 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\lib\libsolarLoad.dll
	ZN4Foam17mixedFvPatchFieldIdE8evaluateENS_8UPstream10commsTypesE [0x6ed23702+0x22]
		 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\lib\libsolarLoad.dll
	ZN4Foam29mixedEnergyFvPatchScalarField12updateCoeffsEv [0x6b1da0a5+0x235]
		 module: C:\Program Files\blueCFD-Core-2020\OpenFOAM-8\platforms\mingw_w64GccDPInt32Opt\lib\libfluidThermophysicalModels.dll
	(No symbol) [0x41f50a]
		 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\bin\urbanMicroClimateFoam.exe
	(No symbol) [0x443b16]
		 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\bin\urbanMicroClimateFoam.exe
	(No symbol) [0x42b886]
		 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\bin\urbanMicroClimateFoam.exe
	(No symbol) [0x47767b]
		 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\bin\urbanMicroClimateFoam.exe
	(No symbol) [0x4013c1]
		 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\bin\urbanMicroClimateFoam.exe
	(No symbol) [0x4014f6]
		 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\bin\urbanMicroClimateFoam.exe
	BaseThreadInitThunk [0x7ffa2cabe8d7+0x17]
		 module: C:\WINDOWS\System32\KERNEL32.DLL
	RtlUserThreadStart [0x7ffa2d13bf6c+0x2c]
		 module: C:\WINDOWS\SYSTEM32\ntdll.dll
[0] 

Backtrace:
	ZN10StackTraceC1Ev [0x626c1855+0x25]
		 module: C:\Program Files\blueCFD-Core-2020\ThirdParty-8\platforms\mingw_w64GccDPInt32\lib\libstack_trace.dll
	ZN4Foam5error10printStackERNS_7OstreamE [0x30eae5a+0x23a]
		 module: C:\Program Files\blueCFD-Core-2020\OpenFOAM-8\platforms\mingw_w64GccDPInt32Opt\lib\libOpenFOAM.dll
	ZN4Foam7sigSegv14sigSegvHandlerEi [0x30ebb03+0x33]
		 module: C:\Program Files\blueCFD-Core-2020\OpenFOAM-8\platforms\mingw_w64GccDPInt32Opt\lib\libOpenFOAM.dll
	(No symbol) [0x4087e2]
		 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\bin\urbanMicroClimateFoam.exe
	_C_specific_handler [0x7ffa2ca0bdbf+0x9f]
		 module: C:\WINDOWS\System32\msvcrt.dll
	0_chkstk [0x7ffa2d1e3f2f+0x9f]
		 module: C:\WINDOWS\SYSTEM32\ntdll.dll
	RtlWow64GetCurrentCpuArea [0x7ffa2d093b78+0xa98]
		 module: C:\WINDOWS\SYSTEM32\ntdll.dll
	KiUserExceptionDispatcher [0x7ffa2d1e386e+0x2e]
		 module: C:\WINDOWS\SYSTEM32\ntdll.dll
	ZN4Foam15mappedPatchBase9facePointERKNS_8polyMeshEiNS1_17cellDecompositionE [0x6aa8d97a+0x16a]
		 module: C:\Program Files\blueCFD-Core-2020\OpenFOAM-8\platforms\mingw_w64GccDPInt32Opt\lib\libmeshTools.dll
	ZNK4Foam15mappedPatchBase10facePointsERKNS_9polyPatchE [0x6aa8fed3+0xa3]
		 module: C:\Program Files\blueCFD-Core-2020\OpenFOAM-8\platforms\mingw_w64GccDPInt32Opt\lib\libmeshTools.dll
	ZNK4Foam15mappedPatchBase11calcMappingEv [0x6aa94534+0x84]
		 module: C:\Program Files\blueCFD-Core-2020\OpenFOAM-8\platforms\mingw_w64GccDPInt32Opt\lib\libmeshTools.dll
	ZNK4Foam15mappedPatchBase10distributeIdEEvRNS_4ListIT_EE [0x6ed44eb5+0x455]
		 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\lib\libsolarLoad.dll
	ZN4Foam12compressible52CFDHAMfluidTemperatureCoupledMixedFvPatchScalarField12updateCoeffsEv [0x6ece6b3a+0x13a]
		 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\lib\libsolarLoad.dll
	ZN4Foam17mixedFvPatchFieldIdE8evaluateENS_8UPstream10commsTypesE [0x6ed23702+0x22]
		 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\lib\libsolarLoad.dll
	ZN4Foam29mixedEnergyFvPatchScalarField12updateCoeffsEv [0x6b1da0a5+0x235]
		 module: C:\Program Files\blueCFD-Core-2020\OpenFOAM-8\platforms\mingw_w64GccDPInt32Opt\lib\libfluidThermophysicalModels.dll
	(No symbol) [0x41f50a]
		 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\bin\urbanMicroClimateFoam.exe
	(No symbol) [0x443b16]
		 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\bin\urbanMicroClimateFoam.exe
	(No symbol) [0x42b886]
		 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\bin\urbanMicroClimateFoam.exe
	(No symbol) [0x47767b]
		 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\bin\urbanMicroClimateFoam.exe
	(No symbol) [0x4013c1]
		 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\bin\urbanMicroClimateFoam.exe
	(No symbol) [0x4014f6]
		 module: C:\Program Files\blueCFD-Core-2020\ofuser-of8\platforms\mingw_w64GccDPInt32Opt\bin\urbanMicroClimateFoam.exe
	BaseThreadInitThunk [0x7ffa2cabe8d7+0x17]
		 module: C:\WINDOWS\System32\KERNEL32.DLL
	RtlUserThreadStart [0x7ffa2d13bf6c+0x2c]
		 module: C:\WINDOWS\SYSTEM32\ntdll.dll

job aborted:
[ranks] message

[0-5] terminated

[6] process exited without calling finalize

[7-9] terminated

---- error analysis -----

[6] on DESKTOP-7UI3F9D
urbanMicroClimateFoam ended prematurely and may have crashed. exit code 3

```

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

This error shows up when attempting to compile UMCF via BlueCFD.

![image](https://github.com/user-attachments/assets/891b1206-8fd1-4d49-a3a9-9bb1abd51aa8)
>>>>>>> parent of 0f0d114 (Update README.md)
