
(cl:in-package :asdf)

(defsystem "ros_02_plumbing_server_client-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Service1" :depends-on ("_package_Service1"))
    (:file "_package_Service1" :depends-on ("_package"))
  ))