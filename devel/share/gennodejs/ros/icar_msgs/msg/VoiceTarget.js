// Auto-generated. Do not edit!

// (in-package icar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VoiceTarget {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position_name = null;
      this.target_name = null;
    }
    else {
      if (initObj.hasOwnProperty('position_name')) {
        this.position_name = initObj.position_name
      }
      else {
        this.position_name = '';
      }
      if (initObj.hasOwnProperty('target_name')) {
        this.target_name = initObj.target_name
      }
      else {
        this.target_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VoiceTarget
    // Serialize message field [position_name]
    bufferOffset = _serializer.string(obj.position_name, buffer, bufferOffset);
    // Serialize message field [target_name]
    bufferOffset = _serializer.string(obj.target_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VoiceTarget
    let len;
    let data = new VoiceTarget(null);
    // Deserialize message field [position_name]
    data.position_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_name]
    data.target_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.position_name);
    length += _getByteLength(object.target_name);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'icar_msgs/VoiceTarget';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7962b51ba94b1a7112e7fe8ad9a28333';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string position_name
    string target_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VoiceTarget(null);
    if (msg.position_name !== undefined) {
      resolved.position_name = msg.position_name;
    }
    else {
      resolved.position_name = ''
    }

    if (msg.target_name !== undefined) {
      resolved.target_name = msg.target_name;
    }
    else {
      resolved.target_name = ''
    }

    return resolved;
    }
};

module.exports = VoiceTarget;
