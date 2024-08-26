; Auto-generated. Do not edit!


(cl:in-package icar_msgs-msg)


;//! \htmlinclude PreciseMoveGoal.msg.html

(cl:defclass <PreciseMoveGoal> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (start_x
    :reader start_x
    :initarg :start_x
    :type cl:float
    :initform 0.0)
   (start_y
    :reader start_y
    :initarg :start_y
    :type cl:float
    :initform 0.0)
   (start_theta
    :reader start_theta
    :initarg :start_theta
    :type cl:float
    :initform 0.0)
   (goal_x
    :reader goal_x
    :initarg :goal_x
    :type cl:float
    :initform 0.0)
   (goal_y
    :reader goal_y
    :initarg :goal_y
    :type cl:float
    :initform 0.0)
   (goal_theta
    :reader goal_theta
    :initarg :goal_theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass PreciseMoveGoal (<PreciseMoveGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PreciseMoveGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PreciseMoveGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name icar_msgs-msg:<PreciseMoveGoal> is deprecated: use icar_msgs-msg:PreciseMoveGoal instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <PreciseMoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icar_msgs-msg:type-val is deprecated.  Use icar_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'start_x-val :lambda-list '(m))
(cl:defmethod start_x-val ((m <PreciseMoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icar_msgs-msg:start_x-val is deprecated.  Use icar_msgs-msg:start_x instead.")
  (start_x m))

(cl:ensure-generic-function 'start_y-val :lambda-list '(m))
(cl:defmethod start_y-val ((m <PreciseMoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icar_msgs-msg:start_y-val is deprecated.  Use icar_msgs-msg:start_y instead.")
  (start_y m))

(cl:ensure-generic-function 'start_theta-val :lambda-list '(m))
(cl:defmethod start_theta-val ((m <PreciseMoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icar_msgs-msg:start_theta-val is deprecated.  Use icar_msgs-msg:start_theta instead.")
  (start_theta m))

(cl:ensure-generic-function 'goal_x-val :lambda-list '(m))
(cl:defmethod goal_x-val ((m <PreciseMoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icar_msgs-msg:goal_x-val is deprecated.  Use icar_msgs-msg:goal_x instead.")
  (goal_x m))

(cl:ensure-generic-function 'goal_y-val :lambda-list '(m))
(cl:defmethod goal_y-val ((m <PreciseMoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icar_msgs-msg:goal_y-val is deprecated.  Use icar_msgs-msg:goal_y instead.")
  (goal_y m))

(cl:ensure-generic-function 'goal_theta-val :lambda-list '(m))
(cl:defmethod goal_theta-val ((m <PreciseMoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icar_msgs-msg:goal_theta-val is deprecated.  Use icar_msgs-msg:goal_theta instead.")
  (goal_theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PreciseMoveGoal>) ostream)
  "Serializes a message object of type '<PreciseMoveGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'start_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'start_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'start_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'goal_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'goal_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'goal_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PreciseMoveGoal>) istream)
  "Deserializes a message object of type '<PreciseMoveGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_theta) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_theta) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PreciseMoveGoal>)))
  "Returns string type for a message object of type '<PreciseMoveGoal>"
  "icar_msgs/PreciseMoveGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PreciseMoveGoal)))
  "Returns string type for a message object of type 'PreciseMoveGoal"
  "icar_msgs/PreciseMoveGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PreciseMoveGoal>)))
  "Returns md5sum for a message object of type '<PreciseMoveGoal>"
  "a1ab3d2c84585a7413ba2a70ea4cd8ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PreciseMoveGoal)))
  "Returns md5sum for a message object of type 'PreciseMoveGoal"
  "a1ab3d2c84585a7413ba2a70ea4cd8ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PreciseMoveGoal>)))
  "Returns full string definition for message of type '<PreciseMoveGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%# if type is 0,then spin. if type is 1, then move. ~%char type~%float64 start_x~%float64 start_y~%float64 start_theta~%float64 goal_x~%float64 goal_y~%float64 goal_theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PreciseMoveGoal)))
  "Returns full string definition for message of type 'PreciseMoveGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%# if type is 0,then spin. if type is 1, then move. ~%char type~%float64 start_x~%float64 start_y~%float64 start_theta~%float64 goal_x~%float64 goal_y~%float64 goal_theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PreciseMoveGoal>))
  (cl:+ 0
     1
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PreciseMoveGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'PreciseMoveGoal
    (cl:cons ':type (type msg))
    (cl:cons ':start_x (start_x msg))
    (cl:cons ':start_y (start_y msg))
    (cl:cons ':start_theta (start_theta msg))
    (cl:cons ':goal_x (goal_x msg))
    (cl:cons ':goal_y (goal_y msg))
    (cl:cons ':goal_theta (goal_theta msg))
))
