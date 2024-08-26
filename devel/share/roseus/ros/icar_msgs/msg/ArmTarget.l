;; Auto-generated. Do not edit!


(when (boundp 'icar_msgs::ArmTarget)
  (if (not (find-package "ICAR_MSGS"))
    (make-package "ICAR_MSGS"))
  (shadow 'ArmTarget (find-package "ICAR_MSGS")))
(unless (find-package "ICAR_MSGS::ARMTARGET")
  (make-package "ICAR_MSGS::ARMTARGET"))

(in-package "ROS")
;;//! \htmlinclude ArmTarget.msg.html


(defclass icar_msgs::ArmTarget
  :super ros::object
  :slots (_type _x _y _z ))

(defmethod icar_msgs::ArmTarget
  (:init
   (&key
    ((:type __type) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
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
    ;; int8 _type
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
     ;; int8 _type
       (write-byte _type s)
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
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get icar_msgs::ArmTarget :md5sum-) "8a04abbe70114f5242b8f16424858f29")
(setf (get icar_msgs::ArmTarget :datatype-) "icar_msgs/ArmTarget")
(setf (get icar_msgs::ArmTarget :definition-)
      "int8 type
float64 x
float64 y
float64 z

")



(provide :icar_msgs/ArmTarget "8a04abbe70114f5242b8f16424858f29")


