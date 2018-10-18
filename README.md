# build-openssl-armv7
Build openssl for android armv7 running with qt. use android NDK 17c
This is the setup scripts for openssl builds for android armv7 used to make libraries run with qt 5.11.

* Reason:
    - Choose openssl 1.0.2p because there are some posts that if builds with openssl 1.1.0h, the library does not load (I'm not sure this).
    - Use android-ndk 17c because when using android-ndk 18 qt error message compatibility.
