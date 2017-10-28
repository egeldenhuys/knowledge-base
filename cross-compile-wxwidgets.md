# Cross Compile WxWidgets for Windows from Linux

- [Guide](https%3A%2F%2Fwiki.wxwidgets.org%2FWxWindows_application_compile_%28for_Linux%29_and_cross-compile_%28for_Windows%29_under_Linux%2FEclipse%2FCDT)
- Download WxWidgets source code
- Install `mingw32`
- Install `wx-*`?

#### Compile for Linux (shared)
- `../configure --prefix=/usr/local/wxWidgets/wxGTK/Unicode/ --enable-unicode`
- `make j4`
- `sudo make install`

#### Compile for Windows (static)
- `../configure --prefix=/usr/local/wxWidgets/wxMSW/Unicode/ --host=i686-w64-mingw32 --enable-unicode --with-msw --without-subdirs CFLAGS=-I/usr/i686-w64-mingw32/include/ --no-shared`
- `make j4`
- `sudo make install`

#### Compile App
```
i686-w64-mingw32-g++ HelloWorldApp.cpp --static -o HelloWorld.exe `/usr/local/wxWidgets/wxMSW-static/Unicode/bin/wx-config --libs --cxxflags`
```
