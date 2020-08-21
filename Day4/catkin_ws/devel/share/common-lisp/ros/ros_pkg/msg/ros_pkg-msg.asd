
(cl:in-package :asdf)

(defsystem "ros_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "complexnumbers" :depends-on ("_package_complexnumbers"))
    (:file "_package_complexnumbers" :depends-on ("_package"))
  ))