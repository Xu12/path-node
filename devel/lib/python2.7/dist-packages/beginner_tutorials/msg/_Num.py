# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from beginner_tutorials/Num.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class Num(genpy.Message):
  _md5sum = "6882244ed4019fbf4ab8cce06ca6ce7e"
  _type = "beginner_tutorials/Num"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int64 num
string first_name
string last_name
uint8 age
uint32 score
geometry_msgs/PoseStamped  spoi




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
"""
  __slots__ = ['num','first_name','last_name','age','score','spoi']
  _slot_types = ['int64','string','string','uint8','uint32','geometry_msgs/PoseStamped']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       num,first_name,last_name,age,score,spoi

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Num, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.num is None:
        self.num = 0
      if self.first_name is None:
        self.first_name = ''
      if self.last_name is None:
        self.last_name = ''
      if self.age is None:
        self.age = 0
      if self.score is None:
        self.score = 0
      if self.spoi is None:
        self.spoi = geometry_msgs.msg.PoseStamped()
    else:
      self.num = 0
      self.first_name = ''
      self.last_name = ''
      self.age = 0
      self.score = 0
      self.spoi = geometry_msgs.msg.PoseStamped()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_struct_q.pack(self.num))
      _x = self.first_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.last_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_B4I.pack(_x.age, _x.score, _x.spoi.header.seq, _x.spoi.header.stamp.secs, _x.spoi.header.stamp.nsecs))
      _x = self.spoi.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d.pack(_x.spoi.pose.position.x, _x.spoi.pose.position.y, _x.spoi.pose.position.z, _x.spoi.pose.orientation.x, _x.spoi.pose.orientation.y, _x.spoi.pose.orientation.z, _x.spoi.pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.spoi is None:
        self.spoi = geometry_msgs.msg.PoseStamped()
      end = 0
      start = end
      end += 8
      (self.num,) = _struct_q.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.first_name = str[start:end].decode('utf-8')
      else:
        self.first_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.last_name = str[start:end].decode('utf-8')
      else:
        self.last_name = str[start:end]
      _x = self
      start = end
      end += 17
      (_x.age, _x.score, _x.spoi.header.seq, _x.spoi.header.stamp.secs, _x.spoi.header.stamp.nsecs,) = _struct_B4I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.spoi.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.spoi.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.spoi.pose.position.x, _x.spoi.pose.position.y, _x.spoi.pose.position.z, _x.spoi.pose.orientation.x, _x.spoi.pose.orientation.y, _x.spoi.pose.orientation.z, _x.spoi.pose.orientation.w,) = _struct_7d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(_struct_q.pack(self.num))
      _x = self.first_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.last_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_B4I.pack(_x.age, _x.score, _x.spoi.header.seq, _x.spoi.header.stamp.secs, _x.spoi.header.stamp.nsecs))
      _x = self.spoi.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d.pack(_x.spoi.pose.position.x, _x.spoi.pose.position.y, _x.spoi.pose.position.z, _x.spoi.pose.orientation.x, _x.spoi.pose.orientation.y, _x.spoi.pose.orientation.z, _x.spoi.pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.spoi is None:
        self.spoi = geometry_msgs.msg.PoseStamped()
      end = 0
      start = end
      end += 8
      (self.num,) = _struct_q.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.first_name = str[start:end].decode('utf-8')
      else:
        self.first_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.last_name = str[start:end].decode('utf-8')
      else:
        self.last_name = str[start:end]
      _x = self
      start = end
      end += 17
      (_x.age, _x.score, _x.spoi.header.seq, _x.spoi.header.stamp.secs, _x.spoi.header.stamp.nsecs,) = _struct_B4I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.spoi.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.spoi.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.spoi.pose.position.x, _x.spoi.pose.position.y, _x.spoi.pose.position.z, _x.spoi.pose.orientation.x, _x.spoi.pose.orientation.y, _x.spoi.pose.orientation.z, _x.spoi.pose.orientation.w,) = _struct_7d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_q = struct.Struct("<q")
_struct_7d = struct.Struct("<7d")
_struct_B4I = struct.Struct("<B4I")
