; Auto-generated. Do not edit!


(cl:in-package icar_msgs-msg)


;//! \htmlinclude VoiceTarget.msg.html

(cl:defclass <VoiceTarget> (roslisp-msg-protocol:ros-message)
  ((position_name
    :reader position_name
    :initarg :position_name
    :type cl:string
    :initform "")
   (target_name
    :reader target_name
    :initarg :target_name
    :type cl:string
    :initform ""))
)

(cl:defclass VoiceTarget (<VoiceTarget>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VoiceTarget>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VoiceTarget)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name icar_msgs-msg:<VoiceTarget> is deprecated: use icar_msgs-msg:VoiceTarget instead.")))

(cl:ensure-generic-function 'position_name-val :lambda-list '(m))
(cl:defmethod position_name-val ((m <VoiceTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icar_msgs-msg:position_name-val is deprecated.  Use icar_msgs-msg:position_name instead.")
  (position_name m))

(cl:ensure-generic-function 'target_name-val :lambda-list '(m))
(cl:defmethod target_name-val ((m <VoiceTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icar_msgs-msg:target_name-val is deprecated.  Use icar_msgs-msg:target_name instead.")
  (target_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VoiceTarget>) ostream)
  "Serializes a message object of type '<VoiceTarget>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'position_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'position_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VoiceTarget>) istream)
  "Deserializes a message object of type '<VoiceTarget>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'position_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VoiceTarget>)))
  "Returns string type for a message object of type '<VoiceTarget>"
  "icar_msgs/VoiceTarget")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VoiceTarget)))
  "Returns string type for a message object of type 'VoiceTarget"
  "icar_msgs/VoiceTarget")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VoiceTarget>)))
  "Returns md5sum for a message object of type '<VoiceTarget>"
  "7962b51ba94b1a7112e7fe8ad9a28333")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VoiceTarget)))
  "Returns md5sum for a message object of type 'VoiceTarget"
  "7962b51ba94b1a7112e7fe8ad9a28333")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VoiceTarget>)))
  "Returns full string definition for message of type '<VoiceTarget>"
  (cl:format cl:nil "string position_name~%string target_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VoiceTarget)))
  "Returns full string definition for message of type 'VoiceTarget"
  (cl:format cl:nil "string position_name~%string target_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VoiceTarget>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'position_name))
     4 (cl:length (cl:slot-value msg 'target_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VoiceTarget>))
  "Converts a ROS message object to a list"
  (cl:list 'VoiceTarget
    (cl:cons ':position_name (position_name msg))
    (cl:cons ':target_name (target_name msg))
))
