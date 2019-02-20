# Problem with cmake for visual studio

Note: if the project is `C:\projects\_vs`, then the build-dir will be here `C:\projects\_build`

Using cmake for visual studio (visual studio 2017) I get the "Configuration failed."

```
1> Command line: C:\PROGRAM FILES (X86)\MICROSOFT VISUAL STUDIO\2017\COMMUNITY\COMMON7\IDE\COMMONEXTENSIONS\MICROSOFT\CMAKE\CMake\bin\cmake.exe  -G "Ninja" -DCMAKE_INSTALL_PREFIX:PATH="C:\Users\magicman\\CMakeBuilds\\2575d756-c379-ab36-a100-0eaf87f84e43\\install\\x86-Debug"  -DCMAKE_CXX_COMPILER="C:/Program Files (x86)/Microsoft Visual Studio/2017/Community/VC/Tools/MSVC/14.16.27023/bin/HostX86/x86/cl.exe"  -DCMAKE_C_COMPILER="C:/Program Files (x86)/Microsoft Visual Studio/2017/Community/VC/Tools/MSVC/14.16.27023/bin/HostX86/x86/cl.exe"  -DCMAKE_BUILD_TYPE="Debug" -DCMAKE_MAKE_PROGRAM="C:\PROGRAM FILES (X86)\MICROSOFT VISUAL STUDIO\2017\COMMUNITY\COMMON7\IDE\COMMONEXTENSIONS\MICROSOFT\CMAKE\Ninja\ninja.exe" "C:\projects\_vs"
1> Working directory: C:\projects\_vs/../_build/2575d756-c379-ab36-a100-0eaf87f84e43/x86-Debug
1> -- The C compiler identification is MSVC 19.16.27027.1
1> -- The CXX compiler identification is MSVC 19.16.27027.1
1> -- The ASM compiler identification is MSVC
1> -- Found assembler: C:/Program Files (x86)/Microsoft Visual Studio/2017/Community/VC/Tools/MSVC/14.16.27023/bin/HostX86/x86/cl.exe
1> -- Check for working C compiler: C:/Program Files (x86)/Microsoft Visual Studio/2017/Community/VC/Tools/MSVC/14.16.27023/bin/HostX86/x86/cl.exe
1> -- Check for working C compiler: C:/Program Files (x86)/Microsoft Visual Studio/2017/Community/VC/Tools/MSVC/14.16.27023/bin/HostX86/x86/cl.exe -- works
1> -- Detecting C compiler ABI info
1> -- Detecting C compiler ABI info - done
1> -- Detecting C compile features
1> -- Detecting C compile features - done
1> -- Check for working CXX compiler: C:/Program Files (x86)/Microsoft Visual Studio/2017/Community/VC/Tools/MSVC/14.16.27023/bin/HostX86/x86/cl.exe
1> -- Check for working CXX compiler: C:/Program Files (x86)/Microsoft Visual Studio/2017/Community/VC/Tools/MSVC/14.16.27023/bin/HostX86/x86/cl.exe -- works
1> -- Detecting CXX compiler ABI info
1> -- Detecting CXX compiler ABI info - done
1> -- Detecting CXX compile features
1> -- Detecting CXX compile features - done
1> -- Configuring done
1> -- Generating done
1> -- Build files have been written to: C:/projects/_build/2575d756-c379-ab36-a100-0eaf87f84e43/x86-Debug
1> Starting CMake target info extraction ...
1> CMake server connection made.
1> Target info extraction done.
1> Configuration failed.
```

Please fix this bug.

Note that the project is perfectly buildable, if I use just the command-line:


```
"C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars32.bat"

"C:\PROGRAM FILES (X86)\MICROSOFT VISUAL STUDIO\2017\COMMUNITY\COMMON7\IDE\COMMONEXTENSIONS\MICROSOFT\CMAKE\CMake\bin\cmake.exe"  -G "Ninja" -DCMAKE_INSTALL_PREFIX:PATH="C:\Users\magicman\\CMakeBuilds\\2575d756-c379-ab36-a100-0eaf87f84e43\\install\\x86-Debug"  -DCMAKE_CXX_COMPILER="C:/Program Files (x86)/Microsoft Visual Studio/2017/Community/VC/Tools/MSVC/14.16.27023/bin/HostX86/x86/cl.exe"  -DCMAKE_C_COMPILER="C:/Program Files (x86)/Microsoft Visual Studio/2017/Community/VC/Tools/MSVC/14.16.27023/bin/HostX86/x86/cl.exe"  -DCMAKE_BUILD_TYPE="Debug" -DCMAKE_MAKE_PROGRAM="C:\PROGRAM FILES (X86)\MICROSOFT VISUAL STUDIO\2017\COMMUNITY\COMMON7\IDE\COMMONEXTENSIONS\MICROSOFT\CMAKE\Ninja\ninja.exe" "C:\projects\_vs"

"C:\PROGRAM FILES (X86)\MICROSOFT VISUAL STUDIO\2017\COMMUNITY\COMMON7\IDE\COMMONEXTENSIONS\MICROSOFT\CMAKE\CMake\bin\cmake.exe" --build . --config Debug -j

src\a\go.exe
```

Moreover note: if I remove `CMakeSettings.json` and start cleanly (i.e. clear `C:\projects\_vs\.vs` and `C:\projects\_build`), then it seems to work.

