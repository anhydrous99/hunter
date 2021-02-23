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
    v2.10.18-p1
    URL
    https://github.com/anhydrous99/cpprestsdk/archive/v2.10.18-p1.tar.gz
    SHA1
    9c3f7dd33aefb56309751b5ffaf5ea724f3821fa
)

hunter_cmake_args(cpprestsdk CMAKE_ARGS 
  BUILD_TESTS=OFF
  BUILD_SAMPLES=OFF
)  

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(cpprestsdk)
hunter_download(PACKAGE_NAME cpprestsdk)