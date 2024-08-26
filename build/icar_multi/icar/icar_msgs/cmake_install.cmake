# Install script for directory: /home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wheeltec/demo03_ws/install")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/icar_msgs/msg" TYPE FILE FILES
    "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/VoiceTarget.msg"
    "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/ArmTarget.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/icar_msgs/srv" TYPE FILE FILES "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/srv/TargetRecognition.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/icar_msgs/action" TYPE FILE FILES "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/action/PreciseMove.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/icar_msgs/msg" TYPE FILE FILES
    "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveAction.msg"
    "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionGoal.msg"
    "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionResult.msg"
    "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionFeedback.msg"
    "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg"
    "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg"
    "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/icar_msgs/cmake" TYPE FILE FILES "/home/wheeltec/demo03_ws/build/icar_multi/icar/icar_msgs/catkin_generated/installspace/icar_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/wheeltec/demo03_ws/devel/include/icar_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/wheeltec/demo03_ws/devel/share/roseus/ros/icar_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/wheeltec/demo03_ws/devel/share/common-lisp/ros/icar_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/wheeltec/demo03_ws/devel/share/gennodejs/ros/icar_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/wheeltec/demo03_ws/devel/lib/python3/dist-packages/icar_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/wheeltec/demo03_ws/devel/lib/python3/dist-packages/icar_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wheeltec/demo03_ws/build/icar_multi/icar/icar_msgs/catkin_generated/installspace/icar_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/icar_msgs/cmake" TYPE FILE FILES "/home/wheeltec/demo03_ws/build/icar_multi/icar/icar_msgs/catkin_generated/installspace/icar_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/icar_msgs/cmake" TYPE FILE FILES
    "/home/wheeltec/demo03_ws/build/icar_multi/icar/icar_msgs/catkin_generated/installspace/icar_msgsConfig.cmake"
    "/home/wheeltec/demo03_ws/build/icar_multi/icar/icar_msgs/catkin_generated/installspace/icar_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/icar_msgs" TYPE FILE FILES "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/package.xml")
endif()

