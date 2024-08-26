; Auto-generated. Do not edit!


(cl:in-package icar_msgs-msg)


;//! \htmlinclude PreciseMoveFeedback.msg.html

(cl:defclass <PreciseMoveFeedback> (roslisp-msg-protocol:ros-message)
  ((current_x
    :reader current_x
    :initarg :current_x
    :type cl:float
    :initform 0.0)
   (current_y
    :reader current_y
    :initarg :current_y
    :type cl:float
    :initform 0.0)
   (current_theta
    :reader current_theta
    :initarg :current_theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass PreciseMoveFeedback (<PreciseMoveFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PreciseMoveFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PreciseMoveFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name icar_msgs-msg:<PreciseMoveFeedback> is deprecated: use icar_msgs-msg:PreciseMoveFeedback instead.")))

(cl:ensure-generic-function 'current_x-val :lambda-list '(m))
(cl:defmethod current_x-val ((m <PreciseMoveFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icar_msgs-msg:current_x-val is deprecated.  Use icar_msgs-msg:current_x instead.")
  (current_x m))

(cl:ensure-generic-function 'current_y-val :lambda-list '(m))
(cl:defmethod current_y-val ((m <PreciseMoveFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icar_msgs-msg:current_y-val is deprecated.  Use icar_msgs-msg:current_y instead.")
  (current_y m))

(cl:ensure-generic-function 'current_theta-val :lambda-list '(m))
(cl:defmethod current_theta-val ((m <PreciseMoveFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icar_msgs-msg:current_theta-val is deprecated.  Use icar_msgs-msg:current_theta instead.")
  (current_theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PreciseMoveFeedback>) ostream)
  "Serializes a message object of type '<PreciseMoveFeedback>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PreciseMoveFeedback>) istream)
  "Deserializes a message object of type '<PreciseMoveFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_theta) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PreciseMoveFeedback>)))
  "Returns string type for a message object of type '<PreciseMoveFeedback>"
  "icar_msgs/PreciseMoveFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PreciseMoveFeedback)))
  "Returns string type for a message object of type 'PreciseMoveFeedback"
  "icar_msgs/PreciseMoveFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PreciseMoveFeedback>)))
  "Returns md5sum for a message object of type '<PreciseMoveFeedback>"
  "135d5d86c0e48dabb265bb68e2f58746")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PreciseMoveFeedback)))
  "Returns md5sum for a message object of type 'PreciseMoveFeedback"
  "135d5d86c0e48dabb265bb68e2f58746")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PreciseMoveFeedback>)))
  "Returns full string definition for message of type '<PreciseMoveFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#define the feedback~%float64 current_x~%float64 current_y~%float64 current_theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PreciseMoveFeedback)))
  "Returns full string definition for message of type 'PreciseMoveFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#define the feedback~%float64 current_x~%float64 current_y~%float64 current_theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PreciseMoveFeedback>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PreciseMoveFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'PreciseMoveFeedback
    (cl:cons ':current_x (current_x msg))
    (cl:cons ':current_y (current_y msg))
    (cl:cons ':current_theta (current_theta msg))
))
