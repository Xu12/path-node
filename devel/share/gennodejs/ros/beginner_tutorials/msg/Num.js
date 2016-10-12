// Auto-generated. Do not edit!

// (in-package beginner_tutorials.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Num {
  constructor() {
    this.num = 0;
    this.first_name = '';
    this.last_name = '';
    this.age = 0;
    this.score = 0;
    this.spoi = new geometry_msgs.msg.PoseStamped();
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type Num
    // Serialize message field [num]
    bufferInfo = _serializer.int64(obj.num, bufferInfo);
    // Serialize message field [first_name]
    bufferInfo = _serializer.string(obj.first_name, bufferInfo);
    // Serialize message field [last_name]
    bufferInfo = _serializer.string(obj.last_name, bufferInfo);
    // Serialize message field [age]
    bufferInfo = _serializer.uint8(obj.age, bufferInfo);
    // Serialize message field [score]
    bufferInfo = _serializer.uint32(obj.score, bufferInfo);
    // Serialize message field [spoi]
    bufferInfo = geometry_msgs.msg.PoseStamped.serialize(obj.spoi, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type Num
    let tmp;
    let len;
    let data = new Num();
    // Deserialize message field [num]
    tmp = _deserializer.int64(buffer);
    data.num = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [first_name]
    tmp = _deserializer.string(buffer);
    data.first_name = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [last_name]
    tmp = _deserializer.string(buffer);
    data.last_name = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [age]
    tmp = _deserializer.uint8(buffer);
    data.age = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [score]
    tmp = _deserializer.uint32(buffer);
    data.score = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [spoi]
    tmp = geometry_msgs.msg.PoseStamped.deserialize(buffer);
    data.spoi = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/Num';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6882244ed4019fbf4ab8cce06ca6ce7e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 num
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
    
    `;
  }

};

module.exports = Num;
