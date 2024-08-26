;; Auto-generated. Do not edit!


(when (boundp 'icar_msgs::VoiceTarget)
  (if (not (find-package "ICAR_MSGS"))
    (make-package "ICAR_MSGS"))
  (shadow 'VoiceTarget (find-package "ICAR_MSGS")))
(unless (find-package "ICAR_MSGS::VOICETARGET")
  (make-package "ICAR_MSGS::VOICETARGET"))

(in-package "ROS")
;;//! \htmlinclude VoiceTarget.msg.html


(defclass icar_msgs::VoiceTarget
  :super ros::object
  :slots (_position_name _target_name ))

(defmethod icar_msgs::VoiceTarget
  (:init
   (&key
    ((:position_name __position_name) "")
    ((:target_name __target_name) "")
    )
   (send-super :init)
   (setq _position_name (string __position_name))
   (setq _target_name (string __target_name))
   self)
  (:position_name
   (&optional __position_name)
   (if __position_name (setq _position_name __position_name)) _position_name)
  (:target_name
   (&optional __target_name)
   (if __target_name (setq _target_name __target_name)) _target_name)
  (:serialization-length
   ()
   (+
    ;; string _position_name
    4 (length _position_name)
    ;; string _target_name
    4 (length _target_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _position_name
       (write-long (length _position_name) s) (princ _position_name s)
     ;; string _target_name
       (write-long (length _target_name) s) (princ _target_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _position_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _position_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get icar_msgs::VoiceTarget :md5sum-) "7962b51ba94b1a7112e7fe8ad9a28333")
(setf (get icar_msgs::VoiceTarget :datatype-) "icar_msgs/VoiceTarget")
(setf (get icar_msgs::VoiceTarget :definition-)
      "string position_name
string target_name

")



(provide :icar_msgs/VoiceTarget "7962b51ba94b1a7112e7fe8ad9a28333")


