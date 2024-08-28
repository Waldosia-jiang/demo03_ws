# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "icar_msgs: 9 messages, 1 services")

set(MSG_I_FLAGS "-Iicar_msgs:/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg;-Iicar_msgs:/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(icar_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/VoiceTarget.msg" NAME_WE)
add_custom_target(_icar_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "icar_msgs" "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/VoiceTarget.msg" ""
)

get_filename_component(_filename "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/ArmTarget.msg" NAME_WE)
add_custom_target(_icar_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "icar_msgs" "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/ArmTarget.msg" ""
)

get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveAction.msg" NAME_WE)
add_custom_target(_icar_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "icar_msgs" "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveAction.msg" "actionlib_msgs/GoalID:icar_msgs/PreciseMoveActionGoal:icar_msgs/PreciseMoveGoal:icar_msgs/PreciseMoveActionFeedback:std_msgs/Header:icar_msgs/PreciseMoveFeedback:icar_msgs/PreciseMoveActionResult:actionlib_msgs/GoalStatus:icar_msgs/PreciseMoveResult"
)

get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionGoal.msg" NAME_WE)
add_custom_target(_icar_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "icar_msgs" "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:icar_msgs/PreciseMoveGoal"
)

get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionResult.msg" NAME_WE)
add_custom_target(_icar_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "icar_msgs" "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus:icar_msgs/PreciseMoveResult"
)

get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionFeedback.msg" NAME_WE)
add_custom_target(_icar_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "icar_msgs" "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus:icar_msgs/PreciseMoveFeedback"
)

get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg" NAME_WE)
add_custom_target(_icar_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "icar_msgs" "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg" ""
)

get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg" NAME_WE)
add_custom_target(_icar_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "icar_msgs" "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg" ""
)

get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg" NAME_WE)
add_custom_target(_icar_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "icar_msgs" "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg" ""
)

get_filename_component(_filename "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/srv/TargetRecognition.srv" NAME_WE)
add_custom_target(_icar_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "icar_msgs" "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/srv/TargetRecognition.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(icar_msgs
  "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/VoiceTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/icar_msgs
)
_generate_msg_cpp(icar_msgs
  "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/ArmTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/icar_msgs
)
_generate_msg_cpp(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionGoal.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/icar_msgs
)
_generate_msg_cpp(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/icar_msgs
)
_generate_msg_cpp(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/icar_msgs
)
_generate_msg_cpp(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/icar_msgs
)
_generate_msg_cpp(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/icar_msgs
)
_generate_msg_cpp(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/icar_msgs
)
_generate_msg_cpp(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/icar_msgs
)

### Generating Services
_generate_srv_cpp(icar_msgs
  "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/srv/TargetRecognition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/icar_msgs
)

### Generating Module File
_generate_module_cpp(icar_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/icar_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(icar_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(icar_msgs_generate_messages icar_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/VoiceTarget.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_cpp _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/ArmTarget.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_cpp _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveAction.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_cpp _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionGoal.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_cpp _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionResult.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_cpp _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionFeedback.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_cpp _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_cpp _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_cpp _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_cpp _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/srv/TargetRecognition.srv" NAME_WE)
add_dependencies(icar_msgs_generate_messages_cpp _icar_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(icar_msgs_gencpp)
add_dependencies(icar_msgs_gencpp icar_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS icar_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(icar_msgs
  "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/VoiceTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/icar_msgs
)
_generate_msg_eus(icar_msgs
  "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/ArmTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/icar_msgs
)
_generate_msg_eus(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionGoal.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/icar_msgs
)
_generate_msg_eus(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/icar_msgs
)
_generate_msg_eus(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/icar_msgs
)
_generate_msg_eus(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/icar_msgs
)
_generate_msg_eus(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/icar_msgs
)
_generate_msg_eus(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/icar_msgs
)
_generate_msg_eus(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/icar_msgs
)

### Generating Services
_generate_srv_eus(icar_msgs
  "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/srv/TargetRecognition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/icar_msgs
)

### Generating Module File
_generate_module_eus(icar_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/icar_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(icar_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(icar_msgs_generate_messages icar_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/VoiceTarget.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_eus _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/ArmTarget.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_eus _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveAction.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_eus _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionGoal.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_eus _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionResult.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_eus _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionFeedback.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_eus _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_eus _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_eus _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_eus _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/srv/TargetRecognition.srv" NAME_WE)
add_dependencies(icar_msgs_generate_messages_eus _icar_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(icar_msgs_geneus)
add_dependencies(icar_msgs_geneus icar_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS icar_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(icar_msgs
  "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/VoiceTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/icar_msgs
)
_generate_msg_lisp(icar_msgs
  "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/ArmTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/icar_msgs
)
_generate_msg_lisp(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionGoal.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/icar_msgs
)
_generate_msg_lisp(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/icar_msgs
)
_generate_msg_lisp(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/icar_msgs
)
_generate_msg_lisp(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/icar_msgs
)
_generate_msg_lisp(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/icar_msgs
)
_generate_msg_lisp(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/icar_msgs
)
_generate_msg_lisp(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/icar_msgs
)

### Generating Services
_generate_srv_lisp(icar_msgs
  "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/srv/TargetRecognition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/icar_msgs
)

### Generating Module File
_generate_module_lisp(icar_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/icar_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(icar_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(icar_msgs_generate_messages icar_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/VoiceTarget.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_lisp _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/ArmTarget.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_lisp _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveAction.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_lisp _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionGoal.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_lisp _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionResult.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_lisp _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionFeedback.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_lisp _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_lisp _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_lisp _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_lisp _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/srv/TargetRecognition.srv" NAME_WE)
add_dependencies(icar_msgs_generate_messages_lisp _icar_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(icar_msgs_genlisp)
add_dependencies(icar_msgs_genlisp icar_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS icar_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(icar_msgs
  "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/VoiceTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/icar_msgs
)
_generate_msg_nodejs(icar_msgs
  "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/ArmTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/icar_msgs
)
_generate_msg_nodejs(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionGoal.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/icar_msgs
)
_generate_msg_nodejs(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/icar_msgs
)
_generate_msg_nodejs(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/icar_msgs
)
_generate_msg_nodejs(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/icar_msgs
)
_generate_msg_nodejs(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/icar_msgs
)
_generate_msg_nodejs(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/icar_msgs
)
_generate_msg_nodejs(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/icar_msgs
)

### Generating Services
_generate_srv_nodejs(icar_msgs
  "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/srv/TargetRecognition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/icar_msgs
)

### Generating Module File
_generate_module_nodejs(icar_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/icar_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(icar_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(icar_msgs_generate_messages icar_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/VoiceTarget.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_nodejs _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/ArmTarget.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_nodejs _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveAction.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_nodejs _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionGoal.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_nodejs _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionResult.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_nodejs _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionFeedback.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_nodejs _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_nodejs _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_nodejs _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_nodejs _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/srv/TargetRecognition.srv" NAME_WE)
add_dependencies(icar_msgs_generate_messages_nodejs _icar_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(icar_msgs_gennodejs)
add_dependencies(icar_msgs_gennodejs icar_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS icar_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(icar_msgs
  "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/VoiceTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/icar_msgs
)
_generate_msg_py(icar_msgs
  "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/ArmTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/icar_msgs
)
_generate_msg_py(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionGoal.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/icar_msgs
)
_generate_msg_py(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/icar_msgs
)
_generate_msg_py(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/icar_msgs
)
_generate_msg_py(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/icar_msgs
)
_generate_msg_py(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/icar_msgs
)
_generate_msg_py(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/icar_msgs
)
_generate_msg_py(icar_msgs
  "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/icar_msgs
)

### Generating Services
_generate_srv_py(icar_msgs
  "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/srv/TargetRecognition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/icar_msgs
)

### Generating Module File
_generate_module_py(icar_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/icar_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(icar_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(icar_msgs_generate_messages icar_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/VoiceTarget.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_py _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/msg/ArmTarget.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_py _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveAction.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_py _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionGoal.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_py _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionResult.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_py _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveActionFeedback.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_py _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveGoal.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_py _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveResult.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_py _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/devel/share/icar_msgs/msg/PreciseMoveFeedback.msg" NAME_WE)
add_dependencies(icar_msgs_generate_messages_py _icar_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wheeltec/demo03_ws/src/icar_multi/icar/icar_msgs/srv/TargetRecognition.srv" NAME_WE)
add_dependencies(icar_msgs_generate_messages_py _icar_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(icar_msgs_genpy)
add_dependencies(icar_msgs_genpy icar_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS icar_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/icar_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/icar_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(icar_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(icar_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/icar_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/icar_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(icar_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(icar_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/icar_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/icar_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(icar_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(icar_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/icar_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/icar_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(icar_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(icar_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/icar_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/icar_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/icar_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(icar_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(icar_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
