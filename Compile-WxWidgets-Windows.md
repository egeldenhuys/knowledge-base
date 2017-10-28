# Compile WxWidgets on Windows

## Process
- Install [MinGW](https://sourceforge.net/projects/mingw/files/Installer/mingw-get-setup.exe/download)
  - Packages:
    - MinGW base tools
    - g++ compiler
    - MinGW Make
- Add `C:\MinGW\bin\` to `%PATH%`
- Download [WxWidgets source code](http://www.wxwidgets.org/downloads/) for windows
- `cd wxWidgets-3.1.0/build/msw`
- `mingw32-make -f makefile.gcc SHARED=1 UNICODE=1 BUILD=release clean`
- `mingw32-make -f makefile.gcc SHARED=1 UNICODE=1 BUILD=release -j4`

## Result
```
gcc -c -o gcc_mswudll\wxtiff_tif_win32.o  -O2 -mthreads  -DHAVE_W32API_H -DNDEBU
G -I..\..\src\zlib -I..\..\src\jpeg -I..\..\src\tiff\libtiff   -MTgcc_mswudll\wx
tiff_tif_win32.o -MFgcc_mswudll\wxtiff_tif_win32.o.d -MD -MP ../../src/tiff/libt
iff/tif_win32.c
In file included from ../../src/tiff/libtiff/tiffio.h:257:0,
                 from ../../src/tiff/libtiff/tiffiop.h:59,
                 from ../../src/tiff/libtiff/tif_win32.c:30:
c:\mingw\include\stdio.h:345:12: error: expected '=', ',', ';', 'asm' or '__attr
ibute__' before '__mingw__snprintf'
 extern int __mingw_stdio_redirect__(snprintf)(char*, size_t, const char*, ...);

            ^
makefile.gcc:6018: recipe for target 'gcc_mswudll\wxtiff_tif_win32.o' failed
mingw32-make: *** [gcc_mswudll\wxtiff_tif_win32.o] Error 1
```

## Conclusion
Don't use Windows.
