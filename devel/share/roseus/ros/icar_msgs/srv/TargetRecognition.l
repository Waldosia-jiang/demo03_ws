;; Auto-generated. Do not edit!


(when (boundp 'icar_msgs::TargetRecognition)
  (if (not (find-package "ICAR_MSGS"))
    (make-package "ICAR_MSGS"))
  (shadow 'TargetRecognition (find-package "ICAR_MSGS")))
(unless (find-package "ICAR_MSGS::TARGETRECOGNITION")
  (make-package "ICAR_MSGS::TARGETRECOGNITION"))
(unless (find-package "ICAR_MSGS::TARGETRECOGNITIONREQUEST")
  (make-package "ICAR_MSGS::TARGETRECOGNITIONREQUEST"))
(unless (find-package "ICAR_MSGS::TARGETRECOGNITIONRESPONSE")
  (make-package "ICAR_MSGS::TARGETRECOGNITIONRESPONSE"))

(in-package "ROS")





(defclass icar_msgs::TargetRecognitionRequest
  :super ros::object
  :slots (_name ))

(defmethod icar_msgs::TargetRecognitionRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass icar_msgs::TargetRecognitionResponse
  :super ros::object
  :slots (_done _x _y _z ))

(defmethod icar_msgs::TargetRecognitionResponse
  (:init
   (&key
    ((:done __done) nil)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _done __done)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:done
   (&optional (__done :null))
   (if (not (eq __done :null)) (setq _done __done)) _done)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; bool _done
    1
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _done
       (if _done (write-byte -1 s) (write-byte 0 s))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _done
     (setq _done (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass icar_msgs::TargetRecognition
  :super ros::object
  :slots ())

(setf (get icar_msgs::TargetRecognition :md5sum-) "c20858a17ef1f1c2a35dbc6267ecc06d")
(setf (get icar_msgs::TargetRecognition :datatype-) "icar_msgs/TargetRecognition")
(setf (get icar_msgs::TargetRecognition :request) icar_msgs::TargetRecognitionRequest)
(setf (get icar_msgs::TargetRecognition :response) icar_msgs::TargetRecognitionResponse)

(defmethod icar_msgs::TargetRecognitionRequest
  (:response () (instance icar_msgs::TargetRecognitionResponse :init)))

(setf (get icar_msgs::TargetRecognitionRequest :md5sum-) "c20858a17ef1f1c2a35dbc6267ecc06d")
(setf (get icar_msgs::TargetRecognitionRequest :datatype-) "icar_msgs/TargetRecognitionRequest")
(setf (get icar_msgs::TargetRecognitionRequest :definition-)
      "string name
---
bool done
float64 x
float64 y
float64 z

")

(setf (get icar_msgs::TargetRecognitionResponse :md5sum-) "c20858a17ef1f1c2a35dbc6267ecc06d")
(setf (get icar_msgs::TargetRecognitionResponse :datatype-) "icar_msgs/TargetRecognitionResponse")
(setf (get icar_msgs::TargetRecognitionResponse :definition-)
      "string name
---
bool done
float64 x
float64 y
float64 z

")



(provide :icar_msgs/TargetRecognition "c20858a17ef1f1c2a35dbc6267ecc06d")


