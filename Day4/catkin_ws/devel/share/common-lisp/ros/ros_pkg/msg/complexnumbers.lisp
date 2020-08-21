; Auto-generated. Do not edit!


(cl:in-package ros_pkg-msg)


;//! \htmlinclude complexnumbers.msg.html

(cl:defclass <complexnumbers> (roslisp-msg-protocol:ros-message)
  ((real
    :reader real
    :initarg :real
    :type cl:float
    :initform 0.0)
   (imaginary
    :reader imaginary
    :initarg :imaginary
    :type cl:float
    :initform 0.0))
)

(cl:defclass complexnumbers (<complexnumbers>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <complexnumbers>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'complexnumbers)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_pkg-msg:<complexnumbers> is deprecated: use ros_pkg-msg:complexnumbers instead.")))

(cl:ensure-generic-function 'real-val :lambda-list '(m))
(cl:defmethod real-val ((m <complexnumbers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_pkg-msg:real-val is deprecated.  Use ros_pkg-msg:real instead.")
  (real m))

(cl:ensure-generic-function 'imaginary-val :lambda-list '(m))
(cl:defmethod imaginary-val ((m <complexnumbers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_pkg-msg:imaginary-val is deprecated.  Use ros_pkg-msg:imaginary instead.")
  (imaginary m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <complexnumbers>) ostream)
  "Serializes a message object of type '<complexnumbers>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'real))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'imaginary))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <complexnumbers>) istream)
  "Deserializes a message object of type '<complexnumbers>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'real) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'imaginary) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<complexnumbers>)))
  "Returns string type for a message object of type '<complexnumbers>"
  "ros_pkg/complexnumbers")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'complexnumbers)))
  "Returns string type for a message object of type 'complexnumbers"
  "ros_pkg/complexnumbers")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<complexnumbers>)))
  "Returns md5sum for a message object of type '<complexnumbers>"
  "54da470dccf15d60bd273ab751e1c0a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'complexnumbers)))
  "Returns md5sum for a message object of type 'complexnumbers"
  "54da470dccf15d60bd273ab751e1c0a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<complexnumbers>)))
  "Returns full string definition for message of type '<complexnumbers>"
  (cl:format cl:nil "float32 real~%float32 imaginary~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'complexnumbers)))
  "Returns full string definition for message of type 'complexnumbers"
  (cl:format cl:nil "float32 real~%float32 imaginary~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <complexnumbers>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <complexnumbers>))
  "Converts a ROS message object to a list"
  (cl:list 'complexnumbers
    (cl:cons ':real (real msg))
    (cl:cons ':imaginary (imaginary msg))
))
