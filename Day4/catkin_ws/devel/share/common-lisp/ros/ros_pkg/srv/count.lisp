; Auto-generated. Do not edit!


(cl:in-package ros_pkg-srv)


;//! \htmlinclude count-request.msg.html

(cl:defclass <count-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:string
    :initform ""))
)

(cl:defclass count-request (<count-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <count-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'count-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_pkg-srv:<count-request> is deprecated: use ros_pkg-srv:count-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <count-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_pkg-srv:x-val is deprecated.  Use ros_pkg-srv:x instead.")
  (x m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <count-request>) ostream)
  "Serializes a message object of type '<count-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'x))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <count-request>) istream)
  "Deserializes a message object of type '<count-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'x) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<count-request>)))
  "Returns string type for a service object of type '<count-request>"
  "ros_pkg/countRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'count-request)))
  "Returns string type for a service object of type 'count-request"
  "ros_pkg/countRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<count-request>)))
  "Returns md5sum for a message object of type '<count-request>"
  "bfeef1b0057338fff2c60cd9004009fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'count-request)))
  "Returns md5sum for a message object of type 'count-request"
  "bfeef1b0057338fff2c60cd9004009fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<count-request>)))
  "Returns full string definition for message of type '<count-request>"
  (cl:format cl:nil "string x~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'count-request)))
  "Returns full string definition for message of type 'count-request"
  (cl:format cl:nil "string x~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <count-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'x))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <count-request>))
  "Converts a ROS message object to a list"
  (cl:list 'count-request
    (cl:cons ':x (x msg))
))
;//! \htmlinclude count-response.msg.html

(cl:defclass <count-response> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0))
)

(cl:defclass count-response (<count-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <count-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'count-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_pkg-srv:<count-response> is deprecated: use ros_pkg-srv:count-response instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <count-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_pkg-srv:count-val is deprecated.  Use ros_pkg-srv:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <count-response>) ostream)
  "Serializes a message object of type '<count-response>"
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <count-response>) istream)
  "Deserializes a message object of type '<count-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<count-response>)))
  "Returns string type for a service object of type '<count-response>"
  "ros_pkg/countResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'count-response)))
  "Returns string type for a service object of type 'count-response"
  "ros_pkg/countResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<count-response>)))
  "Returns md5sum for a message object of type '<count-response>"
  "bfeef1b0057338fff2c60cd9004009fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'count-response)))
  "Returns md5sum for a message object of type 'count-response"
  "bfeef1b0057338fff2c60cd9004009fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<count-response>)))
  "Returns full string definition for message of type '<count-response>"
  (cl:format cl:nil "~%int32 count~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'count-response)))
  "Returns full string definition for message of type 'count-response"
  (cl:format cl:nil "~%int32 count~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <count-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <count-response>))
  "Converts a ROS message object to a list"
  (cl:list 'count-response
    (cl:cons ':count (count msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'count)))
  'count-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'count)))
  'count-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'count)))
  "Returns string type for a service object of type '<count>"
  "ros_pkg/count")