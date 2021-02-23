# Copyright (c) 2016-2017, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

hunter_add_version(
    PACKAGE_NAME
    cpprestsdk
    VERSION
    v2.10.18-p0
    URL
    https://github.com/anhydrous99/cpprestsdk/archive/v2.10.18-p0.tar.gz
    SHA1
    6268222a8e796c29eb13a2dd706f1578033261a1
)

hunter_cmake_args(cpprestsdk CMAKE_ARGS 
  BUILD_TESTS=OFF
  BUILD_SAMPLES=OFF
)  

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(cpprestsdk)
hunter_download(PACKAGE_NAME cpprestsdk)