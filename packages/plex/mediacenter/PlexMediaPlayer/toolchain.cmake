# This file allows to use a dev env with QtCreator
# 1 - Open the CMakeLists.txt in the sources
# 2 - Run cmake with -DCMAKE_TOOLCHAIN_FILE=toolchhin.cmake

set(ENV{CFLAGS} "@TARGET_CFLAGS@")
set(ENV{CXXFLAGS} "@TARGET_CXXFLAGS@")
set(ENV{LD_FLAGS} "@TARGET_LDFLAGS@")
set(ENV{MAKEFLAGS} "@MAKEFLAGS@")
set(ENV{PMP_BUILD_TARGET} "@BUILD_TARGET@")

set(OPENELEC "on")
set(BUILD_TARGET $PMP_BUILD_TARGET)

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_VERBOSE_MAKEFILE true)
set(CMAKE_SYSROOT @SYSROOT_PREFIX@)
set(BUILD_PREFIX @TARGET_PREFIX@)

set(CMAKE_C_COMPILER ${BUILD_PREFIX}gcc)
set(CMAKE_CXX_COMPILER ${BUILD_PREFIX}g++)

set(SYSROOT_PREFIX @SYSROOT_PREFIX@)
set(CMAKE_SYSROOT ${SYSROOT_PREFIX})
set(CMAKE_FIND_ROOT_PATH ${SYSROOT_PREFIX})

set(CMAKE_LIBRARY_PATH "${SYSROOT_PREFIX}/usr/lib" "${SYSROOT_PREFIX}/lib")
set(CMAKE_PREFIX_PATH "${SYSROOT_PREFIX};${SYSROOT_PREFIX}/usr/local/qt5")
set(CMAKE_INCLUDE_PATH "${SYSROOT_PREFIX}/usr/include")

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set(QTROOT ${SYSROOT_PREFIX}/usr/local/qt5)
set(CMAKE_BUILD_TYPE RelWithDebInfo)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

#Now Create the QtCreatorDeployment.txt file
#file(WRITE "${CMAKE_SOURCE_DIR}/QtCreatorDeployment.txt" "<deployment/prefix>\n")
#file(APPEND "${CMAKE_SOURCE_DIR}/QtCreatorDeployment.txt" "${CMAKE_BINARY_DIR}/src/plexmediaplayer:debug/plexmediaplayer\n")
#file(APPEND "${CMAKE_SOURCE_DIR}/QtCreatorDeployment.txt" "${CMAKE_BINARY_DIR}/src/tools/helper/pmphelper:debug/pmphelper\n")