;; Auto-generated. Do not edit!


(when (boundp 'ros_pkg::complexnumbers)
  (if (not (find-package "ROS_PKG"))
    (make-package "ROS_PKG"))
  (shadow 'complexnumbers (find-package "ROS_PKG")))
(unless (find-package "ROS_PKG::COMPLEXNUMBERS")
  (make-package "ROS_PKG::COMPLEXNUMBERS"))

(in-package "ROS")
;;//! \htmlinclude complexnumbers.msg.html


(defclass ros_pkg::complexnumbers
  :super ros::object
  :slots (_real _imaginary ))

(defmethod ros_pkg::complexnumbers
  (:init
   (&key
    ((:real __real) 0.0)
    ((:imaginary __imaginary) 0.0)
    )
   (send-super :init)
   (setq _real (float __real))
   (setq _imaginary (float __imaginary))
   self)
  (:real
   (&optional __real)
   (if __real (setq _real __real)) _real)
  (:imaginary
   (&optional __imaginary)
   (if __imaginary (setq _imaginary __imaginary)) _imaginary)
  (:serialization-length
   ()
   (+
    ;; float32 _real
    4
    ;; float32 _imaginary
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _real
       (sys::poke _real (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _imaginary
       (sys::poke _imaginary (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _real
     (setq _real (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _imaginary
     (setq _imaginary (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_pkg::complexnumbers :md5sum-) "54da470dccf15d60bd273ab751e1c0a1")
(setf (get ros_pkg::complexnumbers :datatype-) "ros_pkg/complexnumbers")
(setf (get ros_pkg::complexnumbers :definition-)
      "float32 real
float32 imaginary


")



(provide :ros_pkg/complexnumbers "54da470dccf15d60bd273ab751e1c0a1")


