# Install script for directory: /Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/tests

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-buffer-uniform")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-buffer-uniform" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-buffer-uniform")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-buffer-uniform")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-buffer-uniform")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-buffer-uniform-shared")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-buffer-uniform-shared" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-buffer-uniform-shared")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-buffer-uniform-shared")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-buffer-uniform-shared")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-buffer-update")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-buffer-update" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-buffer-update")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-buffer-update")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-buffer-update")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-caps")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-caps" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-caps")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-caps")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-caps")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-draw-base-vertex")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-base-vertex" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-base-vertex")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-base-vertex")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-base-vertex")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-draw-image-space")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-image-space" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-image-space")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-image-space")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-image-space")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-draw-instanced")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-instanced" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-instanced")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-instanced")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-instanced")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-draw-multiple")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-multiple" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-multiple")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-multiple")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-multiple")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-draw-range-arrays")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-range-arrays" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-range-arrays")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-range-arrays")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-range-arrays")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-draw-range-elements")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-range-elements" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-range-elements")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-range-elements")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-range-elements")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-draw-without-vertex-attrib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-without-vertex-attrib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-without-vertex-attrib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-without-vertex-attrib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-draw-without-vertex-attrib")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-fbo")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-fbo-blit")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-blit" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-blit")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-blit")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-blit")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-fbo-depth")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-depth" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-depth")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-depth")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-depth")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-fbo-depth-multisample")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-depth-multisample" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-depth-multisample")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-depth-multisample")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-depth-multisample")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-fbo-integer")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-integer" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-integer")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-integer")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-integer")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-fbo-integer-blit")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-integer-blit" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-integer-blit")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-integer-blit")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-integer-blit")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-fbo-layered")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-layered" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-layered")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-layered")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-layered")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-fbo-multisample")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-multisample" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-multisample")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-multisample")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-multisample")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-fbo-multisample-explicit")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-multisample-explicit" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-multisample-explicit")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-multisample-explicit")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-multisample-explicit")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-fbo-multisample-integer")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-multisample-integer" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-multisample-integer")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-multisample-integer")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-multisample-integer")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-fbo-shadow")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-shadow" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-shadow")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-shadow")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-shadow")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-fbo-srgb")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-srgb" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-srgb")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-srgb")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-srgb")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-fbo-rtt")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-rtt" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-rtt")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-rtt")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-rtt")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-fbo-rtt-texture-array")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-rtt-texture-array" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-rtt-texture-array")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-rtt-texture-array")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-fbo-rtt-texture-array")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-glsl-builtin-blocks")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-glsl-builtin-blocks" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-glsl-builtin-blocks")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-glsl-builtin-blocks")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-glsl-builtin-blocks")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-glsl-cast-fail")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-glsl-cast-fail" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-glsl-cast-fail")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-glsl-cast-fail")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-glsl-cast-fail")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-glsl-discard")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-glsl-discard" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-glsl-discard")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-glsl-discard")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-glsl-discard")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-glsl-input-struct")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-glsl-input-struct" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-glsl-input-struct")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-glsl-input-struct")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-glsl-input-struct")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-glsl-precision")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-glsl-precision" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-glsl-precision")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-glsl-precision")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-glsl-precision")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-primitive-front-face")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-front-face" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-front-face")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-front-face")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-front-face")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-primitive-line-msaa")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-line-msaa" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-line-msaa")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-line-msaa")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-line-msaa")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-primitive-point")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-point" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-point")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-point")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-point")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-primitive-point-clip")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-point-clip" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-point-clip")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-point-clip")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-point-clip")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-primitive-point-quad")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-point-quad" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-point-quad")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-point-quad")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-point-quad")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-primitive-shading")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-shading" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-shading")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-shading")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-shading")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-primitive-sprite")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-sprite" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-sprite")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-sprite")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-primitive-sprite")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-program")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-program" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-program")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-program")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-program")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-program-uniform")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-program-uniform" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-program-uniform")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-program-uniform")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-program-uniform")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-query-conditional")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-query-conditional" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-query-conditional")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-query-conditional")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-query-conditional")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-query-occlusion")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-query-occlusion" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-query-occlusion")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-query-occlusion")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-query-occlusion")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-sync")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-sync" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-sync")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-sync")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-sync")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-test-scissor")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-test-scissor" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-test-scissor")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-test-scissor")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-test-scissor")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-texture-2d")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-2d" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-2d")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-2d")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-2d")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-texture-streaming")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-streaming" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-streaming")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-streaming")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-streaming")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-texture-3d")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-3d" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-3d")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-3d")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-3d")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-texture-buffer")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-buffer" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-buffer")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-buffer")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-buffer")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-texture-compressed-ext")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-compressed-ext" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-compressed-ext")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-compressed-ext")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-compressed-ext")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-texture-cube")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-cube" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-cube")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-cube")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-cube")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-texture-derivative")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-derivative" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-derivative")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-derivative")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-derivative")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-texture-integer")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-integer" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-integer")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-integer")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-integer")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-texture-fetch")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-fetch" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-fetch")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-fetch")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-fetch")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-texture-format")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-format" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-format")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-format")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-format")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-texture-offset")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-offset" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-offset")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-offset")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-offset")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-texture-pixel-store")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-pixel-store" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-pixel-store")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-pixel-store")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-texture-pixel-store")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-transform-feedback-interleaved")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-transform-feedback-interleaved" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-transform-feedback-interleaved")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-transform-feedback-interleaved")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-transform-feedback-interleaved")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-320-transform-feedback-separated")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-transform-feedback-separated" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-transform-feedback-separated")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-transform-feedback-separated")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-320-transform-feedback-separated")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-330-blend-index")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-blend-index" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-blend-index")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-blend-index")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-blend-index")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-330-caps")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-caps" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-caps")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-caps")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-caps")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-330-blend-rtt")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-blend-rtt" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-blend-rtt")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-blend-rtt")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-blend-rtt")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-330-buffer-type")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-buffer-type" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-buffer-type")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-buffer-type")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-buffer-type")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-330-draw-instanced-array")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-draw-instanced-array" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-draw-instanced-array")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-draw-instanced-array")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-draw-instanced-array")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-330-fbo-multisample-explicit-nv")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-fbo-multisample-explicit-nv" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-fbo-multisample-explicit-nv")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-fbo-multisample-explicit-nv")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-fbo-multisample-explicit-nv")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-330-query-conditional")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-query-conditional" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-query-conditional")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-query-conditional")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-query-conditional")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-330-query-occlusion")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-query-occlusion" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-query-occlusion")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-query-occlusion")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-query-occlusion")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-330-query-counter")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-query-counter" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-query-counter")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-query-counter")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-query-counter")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-330-query-timer")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-query-timer" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-query-timer")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-query-timer")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-query-timer")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-330-sampler-anisotropy-ext")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-sampler-anisotropy-ext" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-sampler-anisotropy-ext")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-sampler-anisotropy-ext")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-sampler-anisotropy-ext")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-330-sampler-filter")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-sampler-filter" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-sampler-filter")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-sampler-filter")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-sampler-filter")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-330-sampler-object")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-sampler-object" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-sampler-object")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-sampler-object")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-sampler-object")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-330-sampler-wrap")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-sampler-wrap" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-sampler-wrap")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-sampler-wrap")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-sampler-wrap")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-330-texture-integer-rgb10a2ui")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-texture-integer-rgb10a2ui" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-texture-integer-rgb10a2ui")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-texture-integer-rgb10a2ui")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-texture-integer-rgb10a2ui")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-330-texture-swizzle")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-texture-swizzle" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-texture-swizzle")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-texture-swizzle")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-texture-swizzle")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-330-texture-rect")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-texture-rect" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-texture-rect")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-texture-rect")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-330-texture-rect")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-blend-rtt")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-blend-rtt" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-blend-rtt")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-blend-rtt")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-blend-rtt")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-caps")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-caps" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-caps")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-caps")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-caps")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-draw-indirect")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-draw-indirect" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-draw-indirect")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-draw-indirect")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-draw-indirect")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-fbo-layered")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-fbo-layered" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-fbo-layered")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-fbo-layered")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-fbo-layered")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-fbo-multisample")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-fbo-multisample" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-fbo-multisample")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-fbo-multisample")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-fbo-multisample")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-fbo-rtt")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-fbo-rtt" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-fbo-rtt")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-fbo-rtt")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-fbo-rtt")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-fbo-rtt-texture-array")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-fbo-rtt-texture-array" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-fbo-rtt-texture-array")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-fbo-rtt-texture-array")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-fbo-rtt-texture-array")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-fbo-shadow")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-fbo-shadow" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-fbo-shadow")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-fbo-shadow")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-fbo-shadow")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-program-64")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-program-64" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-program-64")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-program-64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-program-64")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-program-subroutine")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-program-subroutine" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-program-subroutine")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-program-subroutine")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-program-subroutine")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-program-varying-blocks")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-program-varying-blocks" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-program-varying-blocks")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-program-varying-blocks")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-program-varying-blocks")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-program-varying-structs")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-program-varying-structs" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-program-varying-structs")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-program-varying-structs")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-program-varying-structs")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-primitive-instanced")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-primitive-instanced" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-primitive-instanced")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-primitive-instanced")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-primitive-instanced")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-primitive-tessellation")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-primitive-tessellation" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-primitive-tessellation")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-primitive-tessellation")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-primitive-tessellation")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-primitive-smooth-shading")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-primitive-smooth-shading" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-primitive-smooth-shading")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-primitive-smooth-shading")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-primitive-smooth-shading")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-sampler-fetch")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-sampler-fetch" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-sampler-fetch")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-sampler-fetch")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-sampler-fetch")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-sampler-array")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-sampler-array" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-sampler-array")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-sampler-array")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-sampler-array")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-sampler-array-nv")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-sampler-array-nv" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-sampler-array-nv")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-sampler-array-nv")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-sampler-array-nv")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-texture-buffer-rgb")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-texture-buffer-rgb" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-texture-buffer-rgb")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-texture-buffer-rgb")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-texture-buffer-rgb")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-texture-cube")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-texture-cube" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-texture-cube")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-texture-cube")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-texture-cube")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-texture-derivative")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-texture-derivative" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-texture-derivative")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-texture-derivative")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-texture-derivative")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-transform-feedback-object")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-transform-feedback-object" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-transform-feedback-object")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-transform-feedback-object")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-transform-feedback-object")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-400-transform-feedback-stream")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-transform-feedback-stream" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-transform-feedback-stream")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-transform-feedback-stream")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-400-transform-feedback-stream")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-410-caps")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-caps" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-caps")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-caps")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-caps")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-410-fbo-layered")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-fbo-layered" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-fbo-layered")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-fbo-layered")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-fbo-layered")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-410-primitive-instanced")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-primitive-instanced" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-primitive-instanced")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-primitive-instanced")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-primitive-instanced")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-410-primitive-tessellation-2")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-primitive-tessellation-2" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-primitive-tessellation-2")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-primitive-tessellation-2")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-primitive-tessellation-2")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-410-primitive-tessellation-5")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-primitive-tessellation-5" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-primitive-tessellation-5")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-primitive-tessellation-5")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-primitive-tessellation-5")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-410-program-64")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-program-64" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-program-64")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-program-64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-program-64")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-410-program-binary")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-program-binary" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-program-binary")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-program-binary")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-program-binary")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-410-program-separate")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-program-separate" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-program-separate")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-program-separate")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-410-program-separate")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-atomic-counter")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-atomic-counter" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-atomic-counter")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-atomic-counter")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-atomic-counter")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-blend-op-amd")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-blend-op-amd" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-blend-op-amd")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-blend-op-amd")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-blend-op-amd")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-buffer-uniform")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-buffer-uniform" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-buffer-uniform")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-buffer-uniform")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-buffer-uniform")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-buffer-pinned-amd")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-buffer-pinned-amd" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-buffer-pinned-amd")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-buffer-pinned-amd")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-buffer-pinned-amd")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-caps")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-caps" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-caps")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-caps")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-caps")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-clipping")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-clipping" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-clipping")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-clipping")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-clipping")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-debug-output")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-debug-output" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-debug-output")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-debug-output")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-debug-output")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-draw-base-instance")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-draw-base-instance" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-draw-base-instance")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-draw-base-instance")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-draw-base-instance")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-fbo")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-fbo" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-fbo")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-fbo")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-fbo")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-draw-image-space-rendering")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-draw-image-space-rendering" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-draw-image-space-rendering")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-draw-image-space-rendering")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-draw-image-space-rendering")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-fbo-multisample-dsa-nv")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-fbo-multisample-dsa-nv" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-fbo-multisample-dsa-nv")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-fbo-multisample-dsa-nv")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-fbo-multisample-dsa-nv")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-fbo-multisample-position-amd")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-fbo-multisample-position-amd" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-fbo-multisample-position-amd")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-fbo-multisample-position-amd")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-fbo-multisample-position-amd")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-fbo-layered-amd")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-fbo-layered-amd" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-fbo-layered-amd")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-fbo-layered-amd")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-fbo-layered-amd")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-fbo-srgb-decode-ext")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-fbo-srgb-decode-ext" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-fbo-srgb-decode-ext")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-fbo-srgb-decode-ext")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-fbo-srgb-decode-ext")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-interface-matching")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-interface-matching" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-interface-matching")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-interface-matching")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-interface-matching")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-image-load")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-image-load" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-image-load")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-image-load")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-image-load")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-image-store")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-image-store" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-image-store")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-image-store")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-image-store")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-image-unpack")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-image-unpack" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-image-unpack")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-image-unpack")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-image-unpack")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-memory-barrier")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-memory-barrier" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-memory-barrier")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-memory-barrier")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-memory-barrier")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-picking")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-picking" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-picking")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-picking")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-picking")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-primitive-line-aa")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-primitive-line-aa" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-primitive-line-aa")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-primitive-line-aa")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-primitive-line-aa")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-primitive-bindless-nv")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-primitive-bindless-nv" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-primitive-bindless-nv")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-primitive-bindless-nv")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-primitive-bindless-nv")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-sampler-fetch")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-sampler-fetch" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-sampler-fetch")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-sampler-fetch")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-sampler-fetch")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-sampler-gather")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-sampler-gather" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-sampler-gather")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-sampler-gather")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-sampler-gather")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-test-depth-clamp-separate-amd")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-test-depth-clamp-separate-amd" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-test-depth-clamp-separate-amd")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-test-depth-clamp-separate-amd")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-test-depth-clamp-separate-amd")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-test-depth-conservative")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-test-depth-conservative" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-test-depth-conservative")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-test-depth-conservative")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-test-depth-conservative")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-texture-array")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-array" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-array")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-array")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-array")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-texture-bindless-nv")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-bindless-nv" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-bindless-nv")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-bindless-nv")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-bindless-nv")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-texture-cube")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-cube" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-cube")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-cube")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-cube")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-texture-pixel-store")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-pixel-store" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-pixel-store")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-pixel-store")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-pixel-store")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-texture-sparse-amd")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-sparse-amd" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-sparse-amd")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-sparse-amd")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-sparse-amd")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-texture-storage")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-storage" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-storage")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-storage")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-storage")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-texture-conversion")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-conversion" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-conversion")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-conversion")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-conversion")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-texture-compressed")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-compressed" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-compressed")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-compressed")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-texture-compressed")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-420-transform-feedback-instanced")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-transform-feedback-instanced" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-transform-feedback-instanced")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-transform-feedback-instanced")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-420-transform-feedback-instanced")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-430-atomic-counter")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-atomic-counter" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-atomic-counter")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-atomic-counter")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-atomic-counter")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-430-caps")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-caps" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-caps")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-caps")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-caps")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-430-debug")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-debug" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-debug")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-debug")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-debug")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-430-direct-state-access-ext")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-direct-state-access-ext" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-direct-state-access-ext")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-direct-state-access-ext")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-direct-state-access-ext")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-430-draw-without-vertex-attrib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-draw-without-vertex-attrib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-draw-without-vertex-attrib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-draw-without-vertex-attrib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-draw-without-vertex-attrib")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-430-draw-vertex-attrib-binding")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-draw-vertex-attrib-binding" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-draw-vertex-attrib-binding")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-draw-vertex-attrib-binding")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-draw-vertex-attrib-binding")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-430-fbo-invalidate")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-fbo-invalidate" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-fbo-invalidate")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-fbo-invalidate")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-fbo-invalidate")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-430-fbo-without-attachment")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-fbo-without-attachment" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-fbo-without-attachment")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-fbo-without-attachment")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-fbo-without-attachment")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-430-image-sampling")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-image-sampling" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-image-sampling")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-image-sampling")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-image-sampling")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-430-image-store")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-image-store" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-image-store")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-image-store")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-image-store")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-430-interface-matching")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-interface-matching" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-interface-matching")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-interface-matching")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-interface-matching")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-430-perf-monitor-amd")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-perf-monitor-amd" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-perf-monitor-amd")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-perf-monitor-amd")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-perf-monitor-amd")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-430-multi-draw-indirect")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-multi-draw-indirect" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-multi-draw-indirect")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-multi-draw-indirect")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-multi-draw-indirect")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-430-program-subroutine")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-program-subroutine" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-program-subroutine")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-program-subroutine")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-program-subroutine")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-430-program-compute")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-program-compute" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-program-compute")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-program-compute")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-program-compute")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-430-program-compute-image")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-program-compute-image" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-program-compute-image")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-program-compute-image")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-program-compute-image")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-430-query-conditional")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-query-conditional" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-query-conditional")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-query-conditional")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-query-conditional")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-430-query-occlusion")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-query-occlusion" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-query-occlusion")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-query-occlusion")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-query-occlusion")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-430-texture-buffer")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-texture-buffer" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-texture-buffer")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-texture-buffer")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-texture-buffer")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-430-texture-copy")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-texture-copy" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-texture-copy")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-texture-copy")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-texture-copy")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-430-texture-storage")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-texture-storage" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-texture-storage")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-texture-storage")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-texture-storage")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-430-texture-view")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-texture-view" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-texture-view")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-texture-view")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-430-texture-view")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-440-atomic-counter")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-atomic-counter" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-atomic-counter")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-atomic-counter")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-atomic-counter")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-440-buffer-storage")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-buffer-storage" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-buffer-storage")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-buffer-storage")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-buffer-storage")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-440-buffer-type")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-buffer-type" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-buffer-type")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-buffer-type")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-buffer-type")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-440-caps")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-caps" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-caps")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-caps")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-caps")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-440-fbo-without-attachment")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-fbo-without-attachment" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-fbo-without-attachment")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-fbo-without-attachment")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-fbo-without-attachment")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-440-glsl-vote-arb")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-glsl-vote-arb" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-glsl-vote-arb")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-glsl-vote-arb")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-glsl-vote-arb")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-440-interface-matching")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-interface-matching" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-interface-matching")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-interface-matching")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-interface-matching")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-440-multi-draw-indirect-count-arb")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-multi-draw-indirect-count-arb" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-multi-draw-indirect-count-arb")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-multi-draw-indirect-count-arb")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-multi-draw-indirect-count-arb")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-440-query-occlusion")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-query-occlusion" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-query-occlusion")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-query-occlusion")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-query-occlusion")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-440-sampler-wrap")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-sampler-wrap" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-sampler-wrap")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-sampler-wrap")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-sampler-wrap")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-440-shader-invocation-nv")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-shader-invocation-nv" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-shader-invocation-nv")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-shader-invocation-nv")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-shader-invocation-nv")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-440-texture-bindless-arb")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-texture-bindless-arb" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-texture-bindless-arb")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-texture-bindless-arb")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-texture-bindless-arb")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-440-texture-compressed")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-texture-compressed" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-texture-compressed")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-texture-compressed")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-texture-compressed")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-440-texture-cube-arb")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-texture-cube-arb" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-texture-cube-arb")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-texture-cube-arb")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-texture-cube-arb")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-440-texture-sparse-arb")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-texture-sparse-arb" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-texture-sparse-arb")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-texture-sparse-arb")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-texture-sparse-arb")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-440-transform-feedback")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-transform-feedback" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-transform-feedback")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-transform-feedback")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-440-transform-feedback")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-450-caps")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-caps" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-caps")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-caps")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-caps")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-450-buffer-sparse-arb")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-buffer-sparse-arb" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-buffer-sparse-arb")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-buffer-sparse-arb")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-buffer-sparse-arb")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-450-clip-control")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-clip-control" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-clip-control")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-clip-control")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-clip-control")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-450-culling")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-culling" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-culling")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-culling")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-culling")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-450-direct-state-access")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-direct-state-access" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-direct-state-access")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-direct-state-access")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-direct-state-access")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-450-fbo-multisample-explicit")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-fbo-multisample-explicit" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-fbo-multisample-explicit")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-fbo-multisample-explicit")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-fbo-multisample-explicit")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-450-multi-draw-indirect-arb")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-multi-draw-indirect-arb" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-multi-draw-indirect-arb")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-multi-draw-indirect-arb")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-multi-draw-indirect-arb")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-450-query-conditional")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-query-conditional" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-query-conditional")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-query-conditional")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-query-conditional")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-450-query-statistics-arb")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-query-statistics-arb" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-query-statistics-arb")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-query-statistics-arb")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-query-statistics-arb")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-450-texture-barrier")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-texture-barrier" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-texture-barrier")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-texture-barrier")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-texture-barrier")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-450-texture-derivative")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-texture-derivative" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-texture-derivative")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-texture-derivative")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-texture-derivative")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/build/Release/gl-450-transform-feedback-arb")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-transform-feedback-arb" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-transform-feedback-arb")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/koheiyasuda/Desktop/study/c++/sdltest/ogl-samples-4.5.0.0/external/FreeImage-3.15.4/macosx"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-transform-feedback-arb")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./gl-450-transform-feedback-arb")
    endif()
  endif()
endif()

