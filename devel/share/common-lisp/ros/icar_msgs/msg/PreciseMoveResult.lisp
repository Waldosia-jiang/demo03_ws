; Auto-generated. Do not edit!


(cl:in-package icar_msgs-msg)


;//! \htmlinclude PreciseMoveResult.msg.html

(cl:defclass <PreciseMoveResult> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:boolean
    :initform cl:nil)
   (current_target_x
    :reader current_target_x
    :initarg :current_target_x
    :type cl:float
    :initform 0.0)
   (current_target_y
    :reader current_target_y
    :initarg :current_target_y
    :type cl:float
    :initform 0.0)
   (current_target_theta
    :reader current_target_theta
    :initarg :current_target_theta
    :type cl:float
    :initform 0.0)
   (error
    :reader error
    :initarg :error
    :type cl:string
    :initform ""))
)

(cl:defclass PreciseMoveResult (<PreciseMoveResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PreciseMoveResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PreciseMoveResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name icar_msgs-msg:<PreciseMoveResult> is deprecated: use icar_msgs-msg:PreciseMoveResult instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <PreciseMoveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icar_msgs-msg:done-val is deprecated.  Use icar_msgs-msg:done instead.")
  (done m))

(cl:ensure-generic-function 'current_target_x-val :lambda-list '(m))
(cl:defmethod current_target_x-val ((m <PreciseMoveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icar_msgs-msg:current_target_x-val is deprecated.  Use icar_msgs-msg:current_target_x instead.")
  (current_target_x m))

(cl:ensure-generic-function 'current_target_y-val :lambda-list '(m))
(cl:defmethod current_target_y-val ((m <PreciseMoveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icar_msgs-msg:current_target_y-val is deprecated.  Use icar_msgs-msg:current_target_y instead.")
  (current_target_y m))

(cl:ensure-generic-function 'current_target_theta-val :lambda-list '(m))
(cl:defmethod current_target_theta-val ((m <PreciseMoveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icar_msgs-msg:current_target_theta-val is deprecated.  Use icar_msgs-msg:current_target_theta instead.")
  (current_target_theta m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <PreciseMoveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icar_msgs-msg:error-val is deprecated.  Use icar_msgs-msg:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PreciseMoveResult>) ostream)
  "Serializes a message object of type '<PreciseMoveResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'done) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_target_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_target_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_target_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PreciseMoveResult>) istream)
  "Deserializes a message object of type '<PreciseMoveResult>"
    (cl:setf (cl:slot-value msg 'done) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_target_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_target_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_target_theta) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PreciseMoveResult>)))
  "Returns string type for a message object of type '<PreciseMoveResult>"
  "icar_msgs/PreciseMoveResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PreciseMoveResult)))
  "Returns string type for a message object of type 'PreciseMoveResult"
  "icar_msgs/PreciseMoveResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PreciseMoveResult>)))
  "Returns md5sum for a message object of type '<PreciseMoveResult>"
  "3f63462f1fc4c7457f5cce6d87a41804")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PreciseMoveResult)))
  "Returns md5sum for a message object of type 'PreciseMoveResult"
  "3f63462f1fc4c7457f5cce6d87a41804")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PreciseMoveResult>)))
  "Returns full string definition for message of type '<PreciseMoveResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#define the result~%bool done~%float64 current_target_x~%float64 current_target_y~%float64 current_target_theta~%string error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PreciseMoveResult)))
  "Returns full string definition for message of type 'PreciseMoveResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#define the result~%bool done~%float64 current_target_x~%float64 current_target_y~%float64 current_target_theta~%string error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PreciseMoveResult>))
  (cl:+ 0
     1
     8
     8
     8
     4 (cl:length (cl:slot-value msg 'error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PreciseMoveResult>))
  "Converts a ROS message object to a list"
  (cl:list 'PreciseMoveResult
    (cl:cons ':done (done msg))
    (cl:cons ':current_target_x (current_target_x msg))
    (cl:cons ':current_target_y (current_target_y msg))
    (cl:cons ':current_target_theta (current_target_theta msg))
    (cl:cons ':error (error msg))
))
