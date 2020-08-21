// Auto-generated. Do not edit!

// (in-package ros_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class countRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type countRequest
    // Serialize message field [x]
    bufferOffset = _serializer.string(obj.x, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type countRequest
    let len;
    let data = new countRequest(null);
    // Deserialize message field [x]
    data.x = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.x.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_pkg/countRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e90a477f371ee690ac763e15f14f34b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string x
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new countRequest(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = ''
    }

    return resolved;
    }
};

class countResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.count = null;
    }
    else {
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type countResponse
    // Serialize message field [count]
    bufferOffset = _serializer.int32(obj.count, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type countResponse
    let len;
    let data = new countResponse(null);
    // Deserialize message field [count]
    data.count = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_pkg/countResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '602d642babe509c7c59f497c23e716a9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int32 count
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new countResponse(null);
    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: countRequest,
  Response: countResponse,
  md5sum() { return 'bfeef1b0057338fff2c60cd9004009fe'; },
  datatype() { return 'ros_pkg/count'; }
};
