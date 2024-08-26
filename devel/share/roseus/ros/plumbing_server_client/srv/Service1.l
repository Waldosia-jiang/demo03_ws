;; Auto-generated. Do not edit!


(when (boundp 'plumbing_server_client::Service1)
  (if (not (find-package "PLUMBING_SERVER_CLIENT"))
    (make-package "PLUMBING_SERVER_CLIENT"))
  (shadow 'Service1 (find-package "PLUMBING_SERVER_CLIENT")))
(unless (find-package "PLUMBING_SERVER_CLIENT::SERVICE1")
  (make-package "PLUMBING_SERVER_CLIENT::SERVICE1"))
(unless (find-package "PLUMBING_SERVER_CLIENT::SERVICE1REQUEST")
  (make-package "PLUMBING_SERVER_CLIENT::SERVICE1REQUEST"))
(unless (find-package "PLUMBING_SERVER_CLIENT::SERVICE1RESPONSE")
  (make-package "PLUMBING_SERVER_CLIENT::SERVICE1RESPONSE"))

(in-package "ROS")





(defclass plumbing_server_client::Service1Request
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod plumbing_server_client::Service1Request
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass plumbing_server_client::Service1Response
  :super ros::object
  :slots (_sum ))

(defmethod plumbing_server_client::Service1Response
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass plumbing_server_client::Service1
  :super ros::object
  :slots ())

(setf (get plumbing_server_client::Service1 :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get plumbing_server_client::Service1 :datatype-) "plumbing_server_client/Service1")
(setf (get plumbing_server_client::Service1 :request) plumbing_server_client::Service1Request)
(setf (get plumbing_server_client::Service1 :response) plumbing_server_client::Service1Response)

(defmethod plumbing_server_client::Service1Request
  (:response () (instance plumbing_server_client::Service1Response :init)))

(setf (get plumbing_server_client::Service1Request :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get plumbing_server_client::Service1Request :datatype-) "plumbing_server_client/Service1Request")
(setf (get plumbing_server_client::Service1Request :definition-)
      "# 客户端请求时发送的两个数字
int32 num1
int32 num2
---
# 服务器响应发送的数据
int32 sum
")

(setf (get plumbing_server_client::Service1Response :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get plumbing_server_client::Service1Response :datatype-) "plumbing_server_client/Service1Response")
(setf (get plumbing_server_client::Service1Response :definition-)
      "# 客户端请求时发送的两个数字
int32 num1
int32 num2
---
# 服务器响应发送的数据
int32 sum
")



(provide :plumbing_server_client/Service1 "4781436a0c2affec8025955a6041e481")


