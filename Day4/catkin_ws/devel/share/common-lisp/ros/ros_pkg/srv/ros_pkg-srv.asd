
(cl:in-package :asdf)

(defsystem "ros_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "count" :depends-on ("_package_count"))
    (:file "_package_count" :depends-on ("_package"))
  ))