//
//  Generated code. Do not modify.
//  source: sdv/databroker/v1/types.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use dataTypeDescriptor instead')
const DataType$json = {
  '1': 'DataType',
  '2': [
    {'1': 'STRING', '2': 0},
    {'1': 'BOOL', '2': 1},
    {'1': 'INT8', '2': 2},
    {'1': 'INT16', '2': 3},
    {'1': 'INT32', '2': 4},
    {'1': 'INT64', '2': 5},
    {'1': 'UINT8', '2': 6},
    {'1': 'UINT16', '2': 7},
    {'1': 'UINT32', '2': 8},
    {'1': 'UINT64', '2': 9},
    {'1': 'FLOAT', '2': 10},
    {'1': 'DOUBLE', '2': 11},
    {'1': 'TIMESTAMP', '2': 12},
    {'1': 'STRING_ARRAY', '2': 20},
    {'1': 'BOOL_ARRAY', '2': 21},
    {'1': 'INT8_ARRAY', '2': 22},
    {'1': 'INT16_ARRAY', '2': 23},
    {'1': 'INT32_ARRAY', '2': 24},
    {'1': 'INT64_ARRAY', '2': 25},
    {'1': 'UINT8_ARRAY', '2': 26},
    {'1': 'UINT16_ARRAY', '2': 27},
    {'1': 'UINT32_ARRAY', '2': 28},
    {'1': 'UINT64_ARRAY', '2': 29},
    {'1': 'FLOAT_ARRAY', '2': 30},
    {'1': 'DOUBLE_ARRAY', '2': 31},
    {'1': 'TIMESTAMP_ARRAY', '2': 32},
  ],
};

/// Descriptor for `DataType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List dataTypeDescriptor = $convert.base64Decode(
    'CghEYXRhVHlwZRIKCgZTVFJJTkcQABIICgRCT09MEAESCAoESU5UOBACEgkKBUlOVDE2EAMSCQ'
    'oFSU5UMzIQBBIJCgVJTlQ2NBAFEgkKBVVJTlQ4EAYSCgoGVUlOVDE2EAcSCgoGVUlOVDMyEAgS'
    'CgoGVUlOVDY0EAkSCQoFRkxPQVQQChIKCgZET1VCTEUQCxINCglUSU1FU1RBTVAQDBIQCgxTVF'
    'JJTkdfQVJSQVkQFBIOCgpCT09MX0FSUkFZEBUSDgoKSU5UOF9BUlJBWRAWEg8KC0lOVDE2X0FS'
    'UkFZEBcSDwoLSU5UMzJfQVJSQVkQGBIPCgtJTlQ2NF9BUlJBWRAZEg8KC1VJTlQ4X0FSUkFZEB'
    'oSEAoMVUlOVDE2X0FSUkFZEBsSEAoMVUlOVDMyX0FSUkFZEBwSEAoMVUlOVDY0X0FSUkFZEB0S'
    'DwoLRkxPQVRfQVJSQVkQHhIQCgxET1VCTEVfQVJSQVkQHxITCg9USU1FU1RBTVBfQVJSQVkQIA'
    '==');

@$core.Deprecated('Use datapointErrorDescriptor instead')
const DatapointError$json = {
  '1': 'DatapointError',
  '2': [
    {'1': 'UNKNOWN_DATAPOINT', '2': 0},
    {'1': 'INVALID_TYPE', '2': 1},
    {'1': 'ACCESS_DENIED', '2': 2},
    {'1': 'INTERNAL_ERROR', '2': 3},
    {'1': 'OUT_OF_BOUNDS', '2': 4},
  ],
};

/// Descriptor for `DatapointError`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List datapointErrorDescriptor = $convert.base64Decode(
    'Cg5EYXRhcG9pbnRFcnJvchIVChFVTktOT1dOX0RBVEFQT0lOVBAAEhAKDElOVkFMSURfVFlQRR'
    'ABEhEKDUFDQ0VTU19ERU5JRUQQAhISCg5JTlRFUk5BTF9FUlJPUhADEhEKDU9VVF9PRl9CT1VO'
    'RFMQBA==');

@$core.Deprecated('Use entryTypeDescriptor instead')
const EntryType$json = {
  '1': 'EntryType',
  '2': [
    {'1': 'ENTRY_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'ENTRY_TYPE_SENSOR', '2': 1},
    {'1': 'ENTRY_TYPE_ACTUATOR', '2': 2},
    {'1': 'ENTRY_TYPE_ATTRIBUTE', '2': 3},
  ],
};

/// Descriptor for `EntryType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List entryTypeDescriptor = $convert.base64Decode(
    'CglFbnRyeVR5cGUSGgoWRU5UUllfVFlQRV9VTlNQRUNJRklFRBAAEhUKEUVOVFJZX1RZUEVfU0'
    'VOU09SEAESFwoTRU5UUllfVFlQRV9BQ1RVQVRPUhACEhgKFEVOVFJZX1RZUEVfQVRUUklCVVRF'
    'EAM=');

@$core.Deprecated('Use changeTypeDescriptor instead')
const ChangeType$json = {
  '1': 'ChangeType',
  '2': [
    {'1': 'STATIC', '2': 0},
    {'1': 'ON_CHANGE', '2': 1},
    {'1': 'CONTINUOUS', '2': 2},
  ],
};

/// Descriptor for `ChangeType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List changeTypeDescriptor = $convert.base64Decode(
    'CgpDaGFuZ2VUeXBlEgoKBlNUQVRJQxAAEg0KCU9OX0NIQU5HRRABEg4KCkNPTlRJTlVPVVMQAg'
    '==');

@$core.Deprecated('Use stringArrayDescriptor instead')
const StringArray$json = {
  '1': 'StringArray',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 9, '10': 'values'},
  ],
};

/// Descriptor for `StringArray`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stringArrayDescriptor = $convert.base64Decode(
    'CgtTdHJpbmdBcnJheRIWCgZ2YWx1ZXMYASADKAlSBnZhbHVlcw==');

@$core.Deprecated('Use boolArrayDescriptor instead')
const BoolArray$json = {
  '1': 'BoolArray',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 8, '10': 'values'},
  ],
};

/// Descriptor for `BoolArray`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boolArrayDescriptor = $convert.base64Decode(
    'CglCb29sQXJyYXkSFgoGdmFsdWVzGAEgAygIUgZ2YWx1ZXM=');

@$core.Deprecated('Use int32ArrayDescriptor instead')
const Int32Array$json = {
  '1': 'Int32Array',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 17, '10': 'values'},
  ],
};

/// Descriptor for `Int32Array`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List int32ArrayDescriptor = $convert.base64Decode(
    'CgpJbnQzMkFycmF5EhYKBnZhbHVlcxgBIAMoEVIGdmFsdWVz');

@$core.Deprecated('Use int64ArrayDescriptor instead')
const Int64Array$json = {
  '1': 'Int64Array',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 18, '10': 'values'},
  ],
};

/// Descriptor for `Int64Array`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List int64ArrayDescriptor = $convert.base64Decode(
    'CgpJbnQ2NEFycmF5EhYKBnZhbHVlcxgBIAMoElIGdmFsdWVz');

@$core.Deprecated('Use uint32ArrayDescriptor instead')
const Uint32Array$json = {
  '1': 'Uint32Array',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 13, '10': 'values'},
  ],
};

/// Descriptor for `Uint32Array`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uint32ArrayDescriptor = $convert.base64Decode(
    'CgtVaW50MzJBcnJheRIWCgZ2YWx1ZXMYASADKA1SBnZhbHVlcw==');

@$core.Deprecated('Use uint64ArrayDescriptor instead')
const Uint64Array$json = {
  '1': 'Uint64Array',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 4, '10': 'values'},
  ],
};

/// Descriptor for `Uint64Array`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uint64ArrayDescriptor = $convert.base64Decode(
    'CgtVaW50NjRBcnJheRIWCgZ2YWx1ZXMYASADKARSBnZhbHVlcw==');

@$core.Deprecated('Use floatArrayDescriptor instead')
const FloatArray$json = {
  '1': 'FloatArray',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 2, '10': 'values'},
  ],
};

/// Descriptor for `FloatArray`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List floatArrayDescriptor = $convert.base64Decode(
    'CgpGbG9hdEFycmF5EhYKBnZhbHVlcxgBIAMoAlIGdmFsdWVz');

@$core.Deprecated('Use doubleArrayDescriptor instead')
const DoubleArray$json = {
  '1': 'DoubleArray',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 1, '10': 'values'},
  ],
};

/// Descriptor for `DoubleArray`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doubleArrayDescriptor = $convert.base64Decode(
    'CgtEb3VibGVBcnJheRIWCgZ2YWx1ZXMYASADKAFSBnZhbHVlcw==');

@$core.Deprecated('Use datapointDescriptor instead')
const Datapoint$json = {
  '1': 'Datapoint',
  '2': [
    {'1': 'timestamp', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
    {'1': 'failure_value', '3': 10, '4': 1, '5': 14, '6': '.sdv.databroker.v1.Datapoint.Failure', '9': 0, '10': 'failureValue'},
    {'1': 'string_value', '3': 11, '4': 1, '5': 9, '9': 0, '10': 'stringValue'},
    {'1': 'bool_value', '3': 12, '4': 1, '5': 8, '9': 0, '10': 'boolValue'},
    {'1': 'int32_value', '3': 13, '4': 1, '5': 17, '9': 0, '10': 'int32Value'},
    {'1': 'int64_value', '3': 14, '4': 1, '5': 18, '9': 0, '10': 'int64Value'},
    {'1': 'uint32_value', '3': 15, '4': 1, '5': 13, '9': 0, '10': 'uint32Value'},
    {'1': 'uint64_value', '3': 16, '4': 1, '5': 4, '9': 0, '10': 'uint64Value'},
    {'1': 'float_value', '3': 17, '4': 1, '5': 2, '9': 0, '10': 'floatValue'},
    {'1': 'double_value', '3': 18, '4': 1, '5': 1, '9': 0, '10': 'doubleValue'},
    {'1': 'string_array', '3': 21, '4': 1, '5': 11, '6': '.sdv.databroker.v1.StringArray', '9': 0, '10': 'stringArray'},
    {'1': 'bool_array', '3': 22, '4': 1, '5': 11, '6': '.sdv.databroker.v1.BoolArray', '9': 0, '10': 'boolArray'},
    {'1': 'int32_array', '3': 23, '4': 1, '5': 11, '6': '.sdv.databroker.v1.Int32Array', '9': 0, '10': 'int32Array'},
    {'1': 'int64_array', '3': 24, '4': 1, '5': 11, '6': '.sdv.databroker.v1.Int64Array', '9': 0, '10': 'int64Array'},
    {'1': 'uint32_array', '3': 25, '4': 1, '5': 11, '6': '.sdv.databroker.v1.Uint32Array', '9': 0, '10': 'uint32Array'},
    {'1': 'uint64_array', '3': 26, '4': 1, '5': 11, '6': '.sdv.databroker.v1.Uint64Array', '9': 0, '10': 'uint64Array'},
    {'1': 'float_array', '3': 27, '4': 1, '5': 11, '6': '.sdv.databroker.v1.FloatArray', '9': 0, '10': 'floatArray'},
    {'1': 'double_array', '3': 28, '4': 1, '5': 11, '6': '.sdv.databroker.v1.DoubleArray', '9': 0, '10': 'doubleArray'},
  ],
  '4': [Datapoint_Failure$json],
  '8': [
    {'1': 'value'},
  ],
};

@$core.Deprecated('Use datapointDescriptor instead')
const Datapoint_Failure$json = {
  '1': 'Failure',
  '2': [
    {'1': 'INVALID_VALUE', '2': 0},
    {'1': 'NOT_AVAILABLE', '2': 1},
    {'1': 'UNKNOWN_DATAPOINT', '2': 2},
    {'1': 'ACCESS_DENIED', '2': 3},
    {'1': 'INTERNAL_ERROR', '2': 4},
  ],
};

/// Descriptor for `Datapoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List datapointDescriptor = $convert.base64Decode(
    'CglEYXRhcG9pbnQSOAoJdGltZXN0YW1wGAEgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdG'
    'FtcFIJdGltZXN0YW1wEksKDWZhaWx1cmVfdmFsdWUYCiABKA4yJC5zZHYuZGF0YWJyb2tlci52'
    'MS5EYXRhcG9pbnQuRmFpbHVyZUgAUgxmYWlsdXJlVmFsdWUSIwoMc3RyaW5nX3ZhbHVlGAsgAS'
    'gJSABSC3N0cmluZ1ZhbHVlEh8KCmJvb2xfdmFsdWUYDCABKAhIAFIJYm9vbFZhbHVlEiEKC2lu'
    'dDMyX3ZhbHVlGA0gASgRSABSCmludDMyVmFsdWUSIQoLaW50NjRfdmFsdWUYDiABKBJIAFIKaW'
    '50NjRWYWx1ZRIjCgx1aW50MzJfdmFsdWUYDyABKA1IAFILdWludDMyVmFsdWUSIwoMdWludDY0'
    'X3ZhbHVlGBAgASgESABSC3VpbnQ2NFZhbHVlEiEKC2Zsb2F0X3ZhbHVlGBEgASgCSABSCmZsb2'
    'F0VmFsdWUSIwoMZG91YmxlX3ZhbHVlGBIgASgBSABSC2RvdWJsZVZhbHVlEkMKDHN0cmluZ19h'
    'cnJheRgVIAEoCzIeLnNkdi5kYXRhYnJva2VyLnYxLlN0cmluZ0FycmF5SABSC3N0cmluZ0Fycm'
    'F5Ej0KCmJvb2xfYXJyYXkYFiABKAsyHC5zZHYuZGF0YWJyb2tlci52MS5Cb29sQXJyYXlIAFIJ'
    'Ym9vbEFycmF5EkAKC2ludDMyX2FycmF5GBcgASgLMh0uc2R2LmRhdGFicm9rZXIudjEuSW50Mz'
    'JBcnJheUgAUgppbnQzMkFycmF5EkAKC2ludDY0X2FycmF5GBggASgLMh0uc2R2LmRhdGFicm9r'
    'ZXIudjEuSW50NjRBcnJheUgAUgppbnQ2NEFycmF5EkMKDHVpbnQzMl9hcnJheRgZIAEoCzIeLn'
    'Nkdi5kYXRhYnJva2VyLnYxLlVpbnQzMkFycmF5SABSC3VpbnQzMkFycmF5EkMKDHVpbnQ2NF9h'
    'cnJheRgaIAEoCzIeLnNkdi5kYXRhYnJva2VyLnYxLlVpbnQ2NEFycmF5SABSC3VpbnQ2NEFycm'
    'F5EkAKC2Zsb2F0X2FycmF5GBsgASgLMh0uc2R2LmRhdGFicm9rZXIudjEuRmxvYXRBcnJheUgA'
    'UgpmbG9hdEFycmF5EkMKDGRvdWJsZV9hcnJheRgcIAEoCzIeLnNkdi5kYXRhYnJva2VyLnYxLk'
    'RvdWJsZUFycmF5SABSC2RvdWJsZUFycmF5Im0KB0ZhaWx1cmUSEQoNSU5WQUxJRF9WQUxVRRAA'
    'EhEKDU5PVF9BVkFJTEFCTEUQARIVChFVTktOT1dOX0RBVEFQT0lOVBACEhEKDUFDQ0VTU19ERU'
    '5JRUQQAxISCg5JTlRFUk5BTF9FUlJPUhAEQgcKBXZhbHVl');

@$core.Deprecated('Use metadataDescriptor instead')
const Metadata$json = {
  '1': 'Metadata',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'entry_type', '3': 2, '4': 1, '5': 14, '6': '.sdv.databroker.v1.EntryType', '10': 'entryType'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'data_type', '3': 5, '4': 1, '5': 14, '6': '.sdv.databroker.v1.DataType', '10': 'dataType'},
    {'1': 'change_type', '3': 6, '4': 1, '5': 14, '6': '.sdv.databroker.v1.ChangeType', '10': 'changeType'},
    {'1': 'description', '3': 7, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `Metadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metadataDescriptor = $convert.base64Decode(
    'CghNZXRhZGF0YRIOCgJpZBgBIAEoBVICaWQSOwoKZW50cnlfdHlwZRgCIAEoDjIcLnNkdi5kYX'
    'RhYnJva2VyLnYxLkVudHJ5VHlwZVIJZW50cnlUeXBlEhIKBG5hbWUYBCABKAlSBG5hbWUSOAoJ'
    'ZGF0YV90eXBlGAUgASgOMhsuc2R2LmRhdGFicm9rZXIudjEuRGF0YVR5cGVSCGRhdGFUeXBlEj'
    '4KC2NoYW5nZV90eXBlGAYgASgOMh0uc2R2LmRhdGFicm9rZXIudjEuQ2hhbmdlVHlwZVIKY2hh'
    'bmdlVHlwZRIgCgtkZXNjcmlwdGlvbhgHIAEoCVILZGVzY3JpcHRpb24=');

