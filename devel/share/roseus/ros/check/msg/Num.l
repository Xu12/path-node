;; Auto-generated. Do not edit!


(when (boundp 'check::Num)
  (if (not (find-package "CHECK"))
    (make-package "CHECK"))
  (shadow 'Num (find-package "CHECK")))
(unless (find-package "CHECK::NUM")
  (make-package "CHECK::NUM"))

(in-package "ROS")
;;//! \htmlinclude Num.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass check::Num
  :super ros::object
  :slots (_spoi ))

(defmethod check::Num
  (:init
   (&key
    ((:spoi __spoi) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _spoi __spoi)
   self)
  (:spoi
   (&rest __spoi)
   (if (keywordp (car __spoi))
       (send* _spoi __spoi)
     (progn
       (if __spoi (setq _spoi (car __spoi)))
       _spoi)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _spoi
    (send _spoi :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _spoi
       (send _spoi :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _spoi
     (send _spoi :deserialize buf ptr-) (incf ptr- (send _spoi :serialization-length))
   ;;
   self)
  )

(setf (get check::Num :md5sum-) "403574f98385a8d0623c66af7c9ba445")
(setf (get check::Num :datatype-) "check/Num")
(setf (get check::Num :definition-)
      "geometry_msgs/PoseStamped  spoi




================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of postion and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :check/Num "403574f98385a8d0623c66af7c9ba445")


