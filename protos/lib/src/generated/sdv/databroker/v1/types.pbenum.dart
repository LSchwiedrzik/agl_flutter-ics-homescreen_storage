//
//  Generated code. Do not modify.
//  source: sdv/databroker/v1/types.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

///  Data type of a signal
///
///  Protobuf doesn't support int8, int16, uint8 or uint16.
///  These are mapped to sint32 and uint32 respectively.
class DataType extends $pb.ProtobufEnum {
  static const DataType STRING = DataType._(0, _omitEnumNames ? '' : 'STRING');
  static const DataType BOOL = DataType._(1, _omitEnumNames ? '' : 'BOOL');
  static const DataType INT8 = DataType._(2, _omitEnumNames ? '' : 'INT8');
  static const DataType INT16 = DataType._(3, _omitEnumNames ? '' : 'INT16');
  static const DataType INT32 = DataType._(4, _omitEnumNames ? '' : 'INT32');
  static const DataType INT64 = DataType._(5, _omitEnumNames ? '' : 'INT64');
  static const DataType UINT8 = DataType._(6, _omitEnumNames ? '' : 'UINT8');
  static const DataType UINT16 = DataType._(7, _omitEnumNames ? '' : 'UINT16');
  static const DataType UINT32 = DataType._(8, _omitEnumNames ? '' : 'UINT32');
  static const DataType UINT64 = DataType._(9, _omitEnumNames ? '' : 'UINT64');
  static const DataType FLOAT = DataType._(10, _omitEnumNames ? '' : 'FLOAT');
  static const DataType DOUBLE = DataType._(11, _omitEnumNames ? '' : 'DOUBLE');
  static const DataType TIMESTAMP = DataType._(12, _omitEnumNames ? '' : 'TIMESTAMP');
  static const DataType STRING_ARRAY = DataType._(20, _omitEnumNames ? '' : 'STRING_ARRAY');
  static const DataType BOOL_ARRAY = DataType._(21, _omitEnumNames ? '' : 'BOOL_ARRAY');
  static const DataType INT8_ARRAY = DataType._(22, _omitEnumNames ? '' : 'INT8_ARRAY');
  static const DataType INT16_ARRAY = DataType._(23, _omitEnumNames ? '' : 'INT16_ARRAY');
  static const DataType INT32_ARRAY = DataType._(24, _omitEnumNames ? '' : 'INT32_ARRAY');
  static const DataType INT64_ARRAY = DataType._(25, _omitEnumNames ? '' : 'INT64_ARRAY');
  static const DataType UINT8_ARRAY = DataType._(26, _omitEnumNames ? '' : 'UINT8_ARRAY');
  static const DataType UINT16_ARRAY = DataType._(27, _omitEnumNames ? '' : 'UINT16_ARRAY');
  static const DataType UINT32_ARRAY = DataType._(28, _omitEnumNames ? '' : 'UINT32_ARRAY');
  static const DataType UINT64_ARRAY = DataType._(29, _omitEnumNames ? '' : 'UINT64_ARRAY');
  static const DataType FLOAT_ARRAY = DataType._(30, _omitEnumNames ? '' : 'FLOAT_ARRAY');
  static const DataType DOUBLE_ARRAY = DataType._(31, _omitEnumNames ? '' : 'DOUBLE_ARRAY');
  static const DataType TIMESTAMP_ARRAY = DataType._(32, _omitEnumNames ? '' : 'TIMESTAMP_ARRAY');

  static const $core.List<DataType> values = <DataType> [
    STRING,
    BOOL,
    INT8,
    INT16,
    INT32,
    INT64,
    UINT8,
    UINT16,
    UINT32,
    UINT64,
    FLOAT,
    DOUBLE,
    TIMESTAMP,
    STRING_ARRAY,
    BOOL_ARRAY,
    INT8_ARRAY,
    INT16_ARRAY,
    INT32_ARRAY,
    INT64_ARRAY,
    UINT8_ARRAY,
    UINT16_ARRAY,
    UINT32_ARRAY,
    UINT64_ARRAY,
    FLOAT_ARRAY,
    DOUBLE_ARRAY,
    TIMESTAMP_ARRAY,
  ];

  static final $core.Map<$core.int, DataType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DataType? valueOf($core.int value) => _byValue[value];

  const DataType._($core.int v, $core.String n) : super(v, n);
}

class DatapointError extends $pb.ProtobufEnum {
  static const DatapointError UNKNOWN_DATAPOINT = DatapointError._(0, _omitEnumNames ? '' : 'UNKNOWN_DATAPOINT');
  static const DatapointError INVALID_TYPE = DatapointError._(1, _omitEnumNames ? '' : 'INVALID_TYPE');
  static const DatapointError ACCESS_DENIED = DatapointError._(2, _omitEnumNames ? '' : 'ACCESS_DENIED');
  static const DatapointError INTERNAL_ERROR = DatapointError._(3, _omitEnumNames ? '' : 'INTERNAL_ERROR');
  static const DatapointError OUT_OF_BOUNDS = DatapointError._(4, _omitEnumNames ? '' : 'OUT_OF_BOUNDS');

  static const $core.List<DatapointError> values = <DatapointError> [
    UNKNOWN_DATAPOINT,
    INVALID_TYPE,
    ACCESS_DENIED,
    INTERNAL_ERROR,
    OUT_OF_BOUNDS,
  ];

  static final $core.Map<$core.int, DatapointError> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DatapointError? valueOf($core.int value) => _byValue[value];

  const DatapointError._($core.int v, $core.String n) : super(v, n);
}

class EntryType extends $pb.ProtobufEnum {
  static const EntryType ENTRY_TYPE_UNSPECIFIED = EntryType._(0, _omitEnumNames ? '' : 'ENTRY_TYPE_UNSPECIFIED');
  static const EntryType ENTRY_TYPE_SENSOR = EntryType._(1, _omitEnumNames ? '' : 'ENTRY_TYPE_SENSOR');
  static const EntryType ENTRY_TYPE_ACTUATOR = EntryType._(2, _omitEnumNames ? '' : 'ENTRY_TYPE_ACTUATOR');
  static const EntryType ENTRY_TYPE_ATTRIBUTE = EntryType._(3, _omitEnumNames ? '' : 'ENTRY_TYPE_ATTRIBUTE');

  static const $core.List<EntryType> values = <EntryType> [
    ENTRY_TYPE_UNSPECIFIED,
    ENTRY_TYPE_SENSOR,
    ENTRY_TYPE_ACTUATOR,
    ENTRY_TYPE_ATTRIBUTE,
  ];

  static final $core.Map<$core.int, EntryType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EntryType? valueOf($core.int value) => _byValue[value];

  const EntryType._($core.int v, $core.String n) : super(v, n);
}

class ChangeType extends $pb.ProtobufEnum {
  static const ChangeType STATIC = ChangeType._(0, _omitEnumNames ? '' : 'STATIC');
  static const ChangeType ON_CHANGE = ChangeType._(1, _omitEnumNames ? '' : 'ON_CHANGE');
  static const ChangeType CONTINUOUS = ChangeType._(2, _omitEnumNames ? '' : 'CONTINUOUS');

  static const $core.List<ChangeType> values = <ChangeType> [
    STATIC,
    ON_CHANGE,
    CONTINUOUS,
  ];

  static final $core.Map<$core.int, ChangeType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ChangeType? valueOf($core.int value) => _byValue[value];

  const ChangeType._($core.int v, $core.String n) : super(v, n);
}

class Datapoint_Failure extends $pb.ProtobufEnum {
  static const Datapoint_Failure INVALID_VALUE = Datapoint_Failure._(0, _omitEnumNames ? '' : 'INVALID_VALUE');
  static const Datapoint_Failure NOT_AVAILABLE = Datapoint_Failure._(1, _omitEnumNames ? '' : 'NOT_AVAILABLE');
  static const Datapoint_Failure UNKNOWN_DATAPOINT = Datapoint_Failure._(2, _omitEnumNames ? '' : 'UNKNOWN_DATAPOINT');
  static const Datapoint_Failure ACCESS_DENIED = Datapoint_Failure._(3, _omitEnumNames ? '' : 'ACCESS_DENIED');
  static const Datapoint_Failure INTERNAL_ERROR = Datapoint_Failure._(4, _omitEnumNames ? '' : 'INTERNAL_ERROR');

  static const $core.List<Datapoint_Failure> values = <Datapoint_Failure> [
    INVALID_VALUE,
    NOT_AVAILABLE,
    UNKNOWN_DATAPOINT,
    ACCESS_DENIED,
    INTERNAL_ERROR,
  ];

  static final $core.Map<$core.int, Datapoint_Failure> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Datapoint_Failure? valueOf($core.int value) => _byValue[value];

  const Datapoint_Failure._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
