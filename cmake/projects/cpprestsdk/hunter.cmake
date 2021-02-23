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
    v2.10.18-p2
    URL
    https://github.com/anhydrous99/cpprestsdk/archive/v2.10.18-p2.tar.gz
    SHA1
    8ee570eb53771abb8345225049b44e2f2261b749
)

hunter_cmake_args(cpprestsdk CMAKE_ARGS 
  BUILD_TESTS=OFF
  BUILD_SAMPLES=OFF
)  

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(cpprestsdk)
hunter_download(PACKAGE_NAME cpprestsdk)