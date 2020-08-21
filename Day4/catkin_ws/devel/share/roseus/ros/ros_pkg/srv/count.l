;; Auto-generated. Do not edit!


(when (boundp 'ros_pkg::count)
  (if (not (find-package "ROS_PKG"))
    (make-package "ROS_PKG"))
  (shadow 'count (find-package "ROS_PKG")))
(unless (find-package "ROS_PKG::COUNT")
  (make-package "ROS_PKG::COUNT"))
(unless (find-package "ROS_PKG::COUNTREQUEST")
  (make-package "ROS_PKG::COUNTREQUEST"))
(unless (find-package "ROS_PKG::COUNTRESPONSE")
  (make-package "ROS_PKG::COUNTRESPONSE"))

(in-package "ROS")





(defclass ros_pkg::countRequest
  :super ros::object
  :slots (_x ))

(defmethod ros_pkg::countRequest
  (:init
   (&key
    ((:x __x) "")
    )
   (send-super :init)
   (setq _x (string __x))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:serialization-length
   ()
   (+
    ;; string _x
    4 (length _x)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _x
       (write-long (length _x) s) (princ _x s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _x
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _x (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ros_pkg::countResponse
  :super ros::object
  :slots (_count ))

(defmethod ros_pkg::countResponse
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; int32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_pkg::count
  :super ros::object
  :slots ())

(setf (get ros_pkg::count :md5sum-) "bfeef1b0057338fff2c60cd9004009fe")
(setf (get ros_pkg::count :datatype-) "ros_pkg/count")
(setf (get ros_pkg::count :request) ros_pkg::countRequest)
(setf (get ros_pkg::count :response) ros_pkg::countResponse)

(defmethod ros_pkg::countRequest
  (:response () (instance ros_pkg::countResponse :init)))

(setf (get ros_pkg::countRequest :md5sum-) "bfeef1b0057338fff2c60cd9004009fe")
(setf (get ros_pkg::countRequest :datatype-) "ros_pkg/countRequest")
(setf (get ros_pkg::countRequest :definition-)
      "string x

---

int32 count

")

(setf (get ros_pkg::countResponse :md5sum-) "bfeef1b0057338fff2c60cd9004009fe")
(setf (get ros_pkg::countResponse :datatype-) "ros_pkg/countResponse")
(setf (get ros_pkg::countResponse :definition-)
      "string x

---

int32 count

")



(provide :ros_pkg/count "bfeef1b0057338fff2c60cd9004009fe")


