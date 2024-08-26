
(cl:in-package :asdf)

(defsystem "icar_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TargetRecognition" :depends-on ("_package_TargetRecognition"))
    (:file "_package_TargetRecognition" :depends-on ("_package"))
  ))