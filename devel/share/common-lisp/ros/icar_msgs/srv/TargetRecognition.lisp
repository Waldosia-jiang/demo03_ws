; Auto-generated. Do not edit!


(cl:in-package icar_msgs-srv)


;//! \htmlinclude TargetRecognition-request.msg.html

(cl:defclass <TargetRecognition-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass TargetRecognition-request (<TargetRecognition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetRecognition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetRecognition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name icar_msgs-srv:<TargetRecognition-request> is deprecated: use icar_msgs-srv:TargetRecognition-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <TargetRecognition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icar_msgs-srv:name-val is deprecated.  Use icar_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetRecognition-request>) ostream)
  "Serializes a message object of type '<TargetRecognition-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetRecognition-request>) istream)
  "Deserializes a message object of type '<TargetRecognition-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetRecognition-request>)))
  "Returns string type for a service object of type '<TargetRecognition-request>"
  "icar_msgs/TargetRecognitionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetRecognition-request)))
  "Returns string type for a service object of type 'TargetRecognition-request"
  "icar_msgs/TargetRecognitionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetRecognition-request>)))
  "Returns md5sum for a message object of type '<TargetRecognition-request>"
  "c20858a17ef1f1c2a35dbc6267ecc06d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetRecognition-request)))
  "Returns md5sum for a message object of type 'TargetRecognition-request"
  "c20858a17ef1f1c2a35dbc6267ecc06d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetRecognition-request>)))
  "Returns full string definition for message of type '<TargetRecognition-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetRecognition-request)))
  "Returns full string definition for message of type 'TargetRecognition-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetRecognition-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetRecognition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetRecognition-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude TargetRecognition-response.msg.html

(cl:defclass <TargetRecognition-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:boolean
    :initform cl:nil)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0))
)

(cl:defclass TargetRecognition-response (<TargetRecognition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetRecognition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetRecognition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name icar_msgs-srv:<TargetRecognition-response> is deprecated: use icar_msgs-srv:TargetRecognition-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <TargetRecognition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icar_msgs-srv:done-val is deprecated.  Use icar_msgs-srv:done instead.")
  (done m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <TargetRecognition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icar_msgs-srv:x-val is deprecated.  Use icar_msgs-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <TargetRecognition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icar_msgs-srv:y-val is deprecated.  Use icar_msgs-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <TargetRecognition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader icar_msgs-srv:z-val is deprecated.  Use icar_msgs-srv:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetRecognition-response>) ostream)
  "Serializes a message object of type '<TargetRecognition-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'done) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetRecognition-response>) istream)
  "Deserializes a message object of type '<TargetRecognition-response>"
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
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetRecognition-response>)))
  "Returns string type for a service object of type '<TargetRecognition-response>"
  "icar_msgs/TargetRecognitionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetRecognition-response)))
  "Returns string type for a service object of type 'TargetRecognition-response"
  "icar_msgs/TargetRecognitionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetRecognition-response>)))
  "Returns md5sum for a message object of type '<TargetRecognition-response>"
  "c20858a17ef1f1c2a35dbc6267ecc06d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetRecognition-response)))
  "Returns md5sum for a message object of type 'TargetRecognition-response"
  "c20858a17ef1f1c2a35dbc6267ecc06d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetRecognition-response>)))
  "Returns full string definition for message of type '<TargetRecognition-response>"
  (cl:format cl:nil "bool done~%float64 x~%float64 y~%float64 z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetRecognition-response)))
  "Returns full string definition for message of type 'TargetRecognition-response"
  (cl:format cl:nil "bool done~%float64 x~%float64 y~%float64 z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetRecognition-response>))
  (cl:+ 0
     1
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetRecognition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetRecognition-response
    (cl:cons ':done (done msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TargetRecognition)))
  'TargetRecognition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TargetRecognition)))
  'TargetRecognition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetRecognition)))
  "Returns string type for a service object of type '<TargetRecognition>"
  "icar_msgs/TargetRecognition")