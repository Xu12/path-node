# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "check: 1 messages, 0 services")

set(MSG_I_FLAGS "-Icheck:/home/xu/path/src/check/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(check_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/xu/path/src/check/msg/Num.msg" NAME_WE)
add_custom_target(_check_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "check" "/home/xu/path/src/check/msg/Num.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(check
  "/home/xu/path/src/check/msg/Num.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/check
)

### Generating Services

### Generating Module File
_generate_module_cpp(check
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/check
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(check_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(check_generate_messages check_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xu/path/src/check/msg/Num.msg" NAME_WE)
add_dependencies(check_generate_messages_cpp _check_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(check_gencpp)
add_dependencies(check_gencpp check_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS check_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(check
  "/home/xu/path/src/check/msg/Num.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/check
)

### Generating Services

### Generating Module File
_generate_module_eus(check
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/check
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(check_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(check_generate_messages check_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xu/path/src/check/msg/Num.msg" NAME_WE)
add_dependencies(check_generate_messages_eus _check_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(check_geneus)
add_dependencies(check_geneus check_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS check_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(check
  "/home/xu/path/src/check/msg/Num.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/check
)

### Generating Services

### Generating Module File
_generate_module_lisp(check
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/check
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(check_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(check_generate_messages check_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xu/path/src/check/msg/Num.msg" NAME_WE)
add_dependencies(check_generate_messages_lisp _check_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(check_genlisp)
add_dependencies(check_genlisp check_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS check_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(check
  "/home/xu/path/src/check/msg/Num.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/check
)

### Generating Services

### Generating Module File
_generate_module_nodejs(check
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/check
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(check_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(check_generate_messages check_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xu/path/src/check/msg/Num.msg" NAME_WE)
add_dependencies(check_generate_messages_nodejs _check_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(check_gennodejs)
add_dependencies(check_gennodejs check_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS check_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(check
  "/home/xu/path/src/check/msg/Num.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/check
)

### Generating Services

### Generating Module File
_generate_module_py(check
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/check
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(check_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(check_generate_messages check_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xu/path/src/check/msg/Num.msg" NAME_WE)
add_dependencies(check_generate_messages_py _check_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(check_genpy)
add_dependencies(check_genpy check_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS check_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/check)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/check
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(check_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(check_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/check)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/check
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
add_dependencies(check_generate_messages_eus std_msgs_generate_messages_eus)
add_dependencies(check_generate_messages_eus geometry_msgs_generate_messages_eus)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/check)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/check
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(check_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(check_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/check)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/check
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
add_dependencies(check_generate_messages_nodejs std_msgs_generate_messages_nodejs)
add_dependencies(check_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/check)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/check\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/check
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(check_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(check_generate_messages_py geometry_msgs_generate_messages_py)
