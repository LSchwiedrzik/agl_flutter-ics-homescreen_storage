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

// ignore: depend_on_referenced_packages
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/timestamp.pb.dart' as $2;
import 'types.pbenum.dart';

export 'types.pbenum.dart';

class StringArray extends $pb.GeneratedMessage {
  factory StringArray({
    $core.Iterable<$core.String>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  StringArray._() : super();
  factory StringArray.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StringArray.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StringArray', package: const $pb.PackageName(_omitMessageNames ? '' : 'sdv.databroker.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'values')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StringArray clone() => StringArray()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StringArray copyWith(void Function(StringArray) updates) => super.copyWith((message) => updates(message as StringArray)) as StringArray;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringArray create() => StringArray._();
  StringArray createEmptyInstance() => create();
  static $pb.PbList<StringArray> createRepeated() => $pb.PbList<StringArray>();
  @$core.pragma('dart2js:noInline')
  static StringArray getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StringArray>(create);
  static StringArray? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get values => $_getList(0);
}

class BoolArray extends $pb.GeneratedMessage {
  factory BoolArray({
    $core.Iterable<$core.bool>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  BoolArray._() : super();
  factory BoolArray.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoolArray.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BoolArray', package: const $pb.PackageName(_omitMessageNames ? '' : 'sdv.databroker.v1'), createEmptyInstance: create)
    ..p<$core.bool>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.KB)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BoolArray clone() => BoolArray()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BoolArray copyWith(void Function(BoolArray) updates) => super.copyWith((message) => updates(message as BoolArray)) as BoolArray;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoolArray create() => BoolArray._();
  BoolArray createEmptyInstance() => create();
  static $pb.PbList<BoolArray> createRepeated() => $pb.PbList<BoolArray>();
  @$core.pragma('dart2js:noInline')
  static BoolArray getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoolArray>(create);
  static BoolArray? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.bool> get values => $_getList(0);
}

class Int32Array extends $pb.GeneratedMessage {
  factory Int32Array({
    $core.Iterable<$core.int>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  Int32Array._() : super();
  factory Int32Array.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Int32Array.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Int32Array', package: const $pb.PackageName(_omitMessageNames ? '' : 'sdv.databroker.v1'), createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.KS3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Int32Array clone() => Int32Array()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Int32Array copyWith(void Function(Int32Array) updates) => super.copyWith((message) => updates(message as Int32Array)) as Int32Array;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int32Array create() => Int32Array._();
  Int32Array createEmptyInstance() => create();
  static $pb.PbList<Int32Array> createRepeated() => $pb.PbList<Int32Array>();
  @$core.pragma('dart2js:noInline')
  static Int32Array getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int32Array>(create);
  static Int32Array? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get values => $_getList(0);
}

class Int64Array extends $pb.GeneratedMessage {
  factory Int64Array({
    $core.Iterable<$fixnum.Int64>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  Int64Array._() : super();
  factory Int64Array.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Int64Array.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Int64Array', package: const $pb.PackageName(_omitMessageNames ? '' : 'sdv.databroker.v1'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.KS6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Int64Array clone() => Int64Array()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Int64Array copyWith(void Function(Int64Array) updates) => super.copyWith((message) => updates(message as Int64Array)) as Int64Array;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64Array create() => Int64Array._();
  Int64Array createEmptyInstance() => create();
  static $pb.PbList<Int64Array> createRepeated() => $pb.PbList<Int64Array>();
  @$core.pragma('dart2js:noInline')
  static Int64Array getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int64Array>(create);
  static Int64Array? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get values => $_getList(0);
}

class Uint32Array extends $pb.GeneratedMessage {
  factory Uint32Array({
    $core.Iterable<$core.int>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  Uint32Array._() : super();
  factory Uint32Array.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Uint32Array.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Uint32Array', package: const $pb.PackageName(_omitMessageNames ? '' : 'sdv.databroker.v1'), createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Uint32Array clone() => Uint32Array()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Uint32Array copyWith(void Function(Uint32Array) updates) => super.copyWith((message) => updates(message as Uint32Array)) as Uint32Array;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Uint32Array create() => Uint32Array._();
  Uint32Array createEmptyInstance() => create();
  static $pb.PbList<Uint32Array> createRepeated() => $pb.PbList<Uint32Array>();
  @$core.pragma('dart2js:noInline')
  static Uint32Array getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Uint32Array>(create);
  static Uint32Array? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get values => $_getList(0);
}

class Uint64Array extends $pb.GeneratedMessage {
  factory Uint64Array({
    $core.Iterable<$fixnum.Int64>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  Uint64Array._() : super();
  factory Uint64Array.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Uint64Array.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Uint64Array', package: const $pb.PackageName(_omitMessageNames ? '' : 'sdv.databroker.v1'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.KU6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Uint64Array clone() => Uint64Array()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Uint64Array copyWith(void Function(Uint64Array) updates) => super.copyWith((message) => updates(message as Uint64Array)) as Uint64Array;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Uint64Array create() => Uint64Array._();
  Uint64Array createEmptyInstance() => create();
  static $pb.PbList<Uint64Array> createRepeated() => $pb.PbList<Uint64Array>();
  @$core.pragma('dart2js:noInline')
  static Uint64Array getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Uint64Array>(create);
  static Uint64Array? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get values => $_getList(0);
}

class FloatArray extends $pb.GeneratedMessage {
  factory FloatArray({
    $core.Iterable<$core.double>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  FloatArray._() : super();
  factory FloatArray.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FloatArray.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FloatArray', package: const $pb.PackageName(_omitMessageNames ? '' : 'sdv.databroker.v1'), createEmptyInstance: create)
    ..p<$core.double>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.KF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FloatArray clone() => FloatArray()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FloatArray copyWith(void Function(FloatArray) updates) => super.copyWith((message) => updates(message as FloatArray)) as FloatArray;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatArray create() => FloatArray._();
  FloatArray createEmptyInstance() => create();
  static $pb.PbList<FloatArray> createRepeated() => $pb.PbList<FloatArray>();
  @$core.pragma('dart2js:noInline')
  static FloatArray getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FloatArray>(create);
  static FloatArray? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.double> get values => $_getList(0);
}

class DoubleArray extends $pb.GeneratedMessage {
  factory DoubleArray({
    $core.Iterable<$core.double>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  DoubleArray._() : super();
  factory DoubleArray.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DoubleArray.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DoubleArray', package: const $pb.PackageName(_omitMessageNames ? '' : 'sdv.databroker.v1'), createEmptyInstance: create)
    ..p<$core.double>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.KD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DoubleArray clone() => DoubleArray()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DoubleArray copyWith(void Function(DoubleArray) updates) => super.copyWith((message) => updates(message as DoubleArray)) as DoubleArray;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoubleArray create() => DoubleArray._();
  DoubleArray createEmptyInstance() => create();
  static $pb.PbList<DoubleArray> createRepeated() => $pb.PbList<DoubleArray>();
  @$core.pragma('dart2js:noInline')
  static DoubleArray getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoubleArray>(create);
  static DoubleArray? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.double> get values => $_getList(0);
}

enum Datapoint_Value {
  failureValue, 
  stringValue, 
  boolValue, 
  int32Value, 
  int64Value, 
  uint32Value, 
  uint64Value, 
  floatValue, 
  doubleValue, 
  stringArray, 
  boolArray, 
  int32Array, 
  int64Array, 
  uint32Array, 
  uint64Array, 
  floatArray, 
  doubleArray, 
  notSet
}

class Datapoint extends $pb.GeneratedMessage {
  factory Datapoint({
    $2.Timestamp? timestamp,
    Datapoint_Failure? failureValue,
    $core.String? stringValue,
    $core.bool? boolValue,
    $core.int? int32Value,
    $fixnum.Int64? int64Value,
    $core.int? uint32Value,
    $fixnum.Int64? uint64Value,
    $core.double? floatValue,
    $core.double? doubleValue,
    StringArray? stringArray,
    BoolArray? boolArray,
    Int32Array? int32Array,
    Int64Array? int64Array,
    Uint32Array? uint32Array,
    Uint64Array? uint64Array,
    FloatArray? floatArray,
    DoubleArray? doubleArray,
  }) {
    final $result = create();
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    if (failureValue != null) {
      $result.failureValue = failureValue;
    }
    if (stringValue != null) {
      $result.stringValue = stringValue;
    }
    if (boolValue != null) {
      $result.boolValue = boolValue;
    }
    if (int32Value != null) {
      $result.int32Value = int32Value;
    }
    if (int64Value != null) {
      $result.int64Value = int64Value;
    }
    if (uint32Value != null) {
      $result.uint32Value = uint32Value;
    }
    if (uint64Value != null) {
      $result.uint64Value = uint64Value;
    }
    if (floatValue != null) {
      $result.floatValue = floatValue;
    }
    if (doubleValue != null) {
      $result.doubleValue = doubleValue;
    }
    if (stringArray != null) {
      $result.stringArray = stringArray;
    }
    if (boolArray != null) {
      $result.boolArray = boolArray;
    }
    if (int32Array != null) {
      $result.int32Array = int32Array;
    }
    if (int64Array != null) {
      $result.int64Array = int64Array;
    }
    if (uint32Array != null) {
      $result.uint32Array = uint32Array;
    }
    if (uint64Array != null) {
      $result.uint64Array = uint64Array;
    }
    if (floatArray != null) {
      $result.floatArray = floatArray;
    }
    if (doubleArray != null) {
      $result.doubleArray = doubleArray;
    }
    return $result;
  }
  Datapoint._() : super();
  factory Datapoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Datapoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Datapoint_Value> _Datapoint_ValueByTag = {
    10 : Datapoint_Value.failureValue,
    11 : Datapoint_Value.stringValue,
    12 : Datapoint_Value.boolValue,
    13 : Datapoint_Value.int32Value,
    14 : Datapoint_Value.int64Value,
    15 : Datapoint_Value.uint32Value,
    16 : Datapoint_Value.uint64Value,
    17 : Datapoint_Value.floatValue,
    18 : Datapoint_Value.doubleValue,
    21 : Datapoint_Value.stringArray,
    22 : Datapoint_Value.boolArray,
    23 : Datapoint_Value.int32Array,
    24 : Datapoint_Value.int64Array,
    25 : Datapoint_Value.uint32Array,
    26 : Datapoint_Value.uint64Array,
    27 : Datapoint_Value.floatArray,
    28 : Datapoint_Value.doubleArray,
    0 : Datapoint_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Datapoint', package: const $pb.PackageName(_omitMessageNames ? '' : 'sdv.databroker.v1'), createEmptyInstance: create)
    ..oo(0, [10, 11, 12, 13, 14, 15, 16, 17, 18, 21, 22, 23, 24, 25, 26, 27, 28])
    ..aOM<$2.Timestamp>(1, _omitFieldNames ? '' : 'timestamp', subBuilder: $2.Timestamp.create)
    ..e<Datapoint_Failure>(10, _omitFieldNames ? '' : 'failureValue', $pb.PbFieldType.OE, defaultOrMaker: Datapoint_Failure.INVALID_VALUE, valueOf: Datapoint_Failure.valueOf, enumValues: Datapoint_Failure.values)
    ..aOS(11, _omitFieldNames ? '' : 'stringValue')
    ..aOB(12, _omitFieldNames ? '' : 'boolValue')
    ..a<$core.int>(13, _omitFieldNames ? '' : 'int32Value', $pb.PbFieldType.OS3)
    ..a<$fixnum.Int64>(14, _omitFieldNames ? '' : 'int64Value', $pb.PbFieldType.OS6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(15, _omitFieldNames ? '' : 'uint32Value', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(16, _omitFieldNames ? '' : 'uint64Value', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(17, _omitFieldNames ? '' : 'floatValue', $pb.PbFieldType.OF)
    ..a<$core.double>(18, _omitFieldNames ? '' : 'doubleValue', $pb.PbFieldType.OD)
    ..aOM<StringArray>(21, _omitFieldNames ? '' : 'stringArray', subBuilder: StringArray.create)
    ..aOM<BoolArray>(22, _omitFieldNames ? '' : 'boolArray', subBuilder: BoolArray.create)
    ..aOM<Int32Array>(23, _omitFieldNames ? '' : 'int32Array', subBuilder: Int32Array.create)
    ..aOM<Int64Array>(24, _omitFieldNames ? '' : 'int64Array', subBuilder: Int64Array.create)
    ..aOM<Uint32Array>(25, _omitFieldNames ? '' : 'uint32Array', subBuilder: Uint32Array.create)
    ..aOM<Uint64Array>(26, _omitFieldNames ? '' : 'uint64Array', subBuilder: Uint64Array.create)
    ..aOM<FloatArray>(27, _omitFieldNames ? '' : 'floatArray', subBuilder: FloatArray.create)
    ..aOM<DoubleArray>(28, _omitFieldNames ? '' : 'doubleArray', subBuilder: DoubleArray.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Datapoint clone() => Datapoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Datapoint copyWith(void Function(Datapoint) updates) => super.copyWith((message) => updates(message as Datapoint)) as Datapoint;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Datapoint create() => Datapoint._();
  Datapoint createEmptyInstance() => create();
  static $pb.PbList<Datapoint> createRepeated() => $pb.PbList<Datapoint>();
  @$core.pragma('dart2js:noInline')
  static Datapoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Datapoint>(create);
  static Datapoint? _defaultInstance;

  Datapoint_Value whichValue() => _Datapoint_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  /// Timestamp of the value
  @$pb.TagNumber(1)
  $2.Timestamp get timestamp => $_getN(0);
  @$pb.TagNumber(1)
  set timestamp($2.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);
  @$pb.TagNumber(1)
  $2.Timestamp ensureTimestamp() => $_ensure(0);

  @$pb.TagNumber(10)
  Datapoint_Failure get failureValue => $_getN(1);
  @$pb.TagNumber(10)
  set failureValue(Datapoint_Failure v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasFailureValue() => $_has(1);
  @$pb.TagNumber(10)
  void clearFailureValue() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get stringValue => $_getSZ(2);
  @$pb.TagNumber(11)
  set stringValue($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(11)
  $core.bool hasStringValue() => $_has(2);
  @$pb.TagNumber(11)
  void clearStringValue() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get boolValue => $_getBF(3);
  @$pb.TagNumber(12)
  set boolValue($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(12)
  $core.bool hasBoolValue() => $_has(3);
  @$pb.TagNumber(12)
  void clearBoolValue() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get int32Value => $_getIZ(4);
  @$pb.TagNumber(13)
  set int32Value($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(13)
  $core.bool hasInt32Value() => $_has(4);
  @$pb.TagNumber(13)
  void clearInt32Value() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get int64Value => $_getI64(5);
  @$pb.TagNumber(14)
  set int64Value($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(14)
  $core.bool hasInt64Value() => $_has(5);
  @$pb.TagNumber(14)
  void clearInt64Value() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get uint32Value => $_getIZ(6);
  @$pb.TagNumber(15)
  set uint32Value($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(15)
  $core.bool hasUint32Value() => $_has(6);
  @$pb.TagNumber(15)
  void clearUint32Value() => clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get uint64Value => $_getI64(7);
  @$pb.TagNumber(16)
  set uint64Value($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(16)
  $core.bool hasUint64Value() => $_has(7);
  @$pb.TagNumber(16)
  void clearUint64Value() => clearField(16);

  @$pb.TagNumber(17)
  $core.double get floatValue => $_getN(8);
  @$pb.TagNumber(17)
  set floatValue($core.double v) { $_setFloat(8, v); }
  @$pb.TagNumber(17)
  $core.bool hasFloatValue() => $_has(8);
  @$pb.TagNumber(17)
  void clearFloatValue() => clearField(17);

  @$pb.TagNumber(18)
  $core.double get doubleValue => $_getN(9);
  @$pb.TagNumber(18)
  set doubleValue($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(18)
  $core.bool hasDoubleValue() => $_has(9);
  @$pb.TagNumber(18)
  void clearDoubleValue() => clearField(18);

  @$pb.TagNumber(21)
  StringArray get stringArray => $_getN(10);
  @$pb.TagNumber(21)
  set stringArray(StringArray v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasStringArray() => $_has(10);
  @$pb.TagNumber(21)
  void clearStringArray() => clearField(21);
  @$pb.TagNumber(21)
  StringArray ensureStringArray() => $_ensure(10);

  @$pb.TagNumber(22)
  BoolArray get boolArray => $_getN(11);
  @$pb.TagNumber(22)
  set boolArray(BoolArray v) { setField(22, v); }
  @$pb.TagNumber(22)
  $core.bool hasBoolArray() => $_has(11);
  @$pb.TagNumber(22)
  void clearBoolArray() => clearField(22);
  @$pb.TagNumber(22)
  BoolArray ensureBoolArray() => $_ensure(11);

  @$pb.TagNumber(23)
  Int32Array get int32Array => $_getN(12);
  @$pb.TagNumber(23)
  set int32Array(Int32Array v) { setField(23, v); }
  @$pb.TagNumber(23)
  $core.bool hasInt32Array() => $_has(12);
  @$pb.TagNumber(23)
  void clearInt32Array() => clearField(23);
  @$pb.TagNumber(23)
  Int32Array ensureInt32Array() => $_ensure(12);

  @$pb.TagNumber(24)
  Int64Array get int64Array => $_getN(13);
  @$pb.TagNumber(24)
  set int64Array(Int64Array v) { setField(24, v); }
  @$pb.TagNumber(24)
  $core.bool hasInt64Array() => $_has(13);
  @$pb.TagNumber(24)
  void clearInt64Array() => clearField(24);
  @$pb.TagNumber(24)
  Int64Array ensureInt64Array() => $_ensure(13);

  @$pb.TagNumber(25)
  Uint32Array get uint32Array => $_getN(14);
  @$pb.TagNumber(25)
  set uint32Array(Uint32Array v) { setField(25, v); }
  @$pb.TagNumber(25)
  $core.bool hasUint32Array() => $_has(14);
  @$pb.TagNumber(25)
  void clearUint32Array() => clearField(25);
  @$pb.TagNumber(25)
  Uint32Array ensureUint32Array() => $_ensure(14);

  @$pb.TagNumber(26)
  Uint64Array get uint64Array => $_getN(15);
  @$pb.TagNumber(26)
  set uint64Array(Uint64Array v) { setField(26, v); }
  @$pb.TagNumber(26)
  $core.bool hasUint64Array() => $_has(15);
  @$pb.TagNumber(26)
  void clearUint64Array() => clearField(26);
  @$pb.TagNumber(26)
  Uint64Array ensureUint64Array() => $_ensure(15);

  @$pb.TagNumber(27)
  FloatArray get floatArray => $_getN(16);
  @$pb.TagNumber(27)
  set floatArray(FloatArray v) { setField(27, v); }
  @$pb.TagNumber(27)
  $core.bool hasFloatArray() => $_has(16);
  @$pb.TagNumber(27)
  void clearFloatArray() => clearField(27);
  @$pb.TagNumber(27)
  FloatArray ensureFloatArray() => $_ensure(16);

  @$pb.TagNumber(28)
  DoubleArray get doubleArray => $_getN(17);
  @$pb.TagNumber(28)
  set doubleArray(DoubleArray v) { setField(28, v); }
  @$pb.TagNumber(28)
  $core.bool hasDoubleArray() => $_has(17);
  @$pb.TagNumber(28)
  void clearDoubleArray() => clearField(28);
  @$pb.TagNumber(28)
  DoubleArray ensureDoubleArray() => $_ensure(17);
}

class Metadata extends $pb.GeneratedMessage {
  factory Metadata({
    $core.int? id,
    EntryType? entryType,
    $core.String? name,
    DataType? dataType,
    ChangeType? changeType,
    $core.String? description,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (entryType != null) {
      $result.entryType = entryType;
    }
    if (name != null) {
      $result.name = name;
    }
    if (dataType != null) {
      $result.dataType = dataType;
    }
    if (changeType != null) {
      $result.changeType = changeType;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  Metadata._() : super();
  factory Metadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Metadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Metadata', package: const $pb.PackageName(_omitMessageNames ? '' : 'sdv.databroker.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..e<EntryType>(2, _omitFieldNames ? '' : 'entryType', $pb.PbFieldType.OE, defaultOrMaker: EntryType.ENTRY_TYPE_UNSPECIFIED, valueOf: EntryType.valueOf, enumValues: EntryType.values)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..e<DataType>(5, _omitFieldNames ? '' : 'dataType', $pb.PbFieldType.OE, defaultOrMaker: DataType.STRING, valueOf: DataType.valueOf, enumValues: DataType.values)
    ..e<ChangeType>(6, _omitFieldNames ? '' : 'changeType', $pb.PbFieldType.OE, defaultOrMaker: ChangeType.STATIC, valueOf: ChangeType.valueOf, enumValues: ChangeType.values)
    ..aOS(7, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Metadata clone() => Metadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Metadata copyWith(void Function(Metadata) updates) => super.copyWith((message) => updates(message as Metadata)) as Metadata;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Metadata create() => Metadata._();
  Metadata createEmptyInstance() => create();
  static $pb.PbList<Metadata> createRepeated() => $pb.PbList<Metadata>();
  @$core.pragma('dart2js:noInline')
  static Metadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Metadata>(create);
  static Metadata? _defaultInstance;

  /// Id to be used in "get" and "subscribe" requests. Ids stay valid during
  /// one power cycle, only.
  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  EntryType get entryType => $_getN(1);
  @$pb.TagNumber(2)
  set entryType(EntryType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEntryType() => $_has(1);
  @$pb.TagNumber(2)
  void clearEntryType() => clearField(2);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  DataType get dataType => $_getN(3);
  @$pb.TagNumber(5)
  set dataType(DataType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasDataType() => $_has(3);
  @$pb.TagNumber(5)
  void clearDataType() => clearField(5);

  @$pb.TagNumber(6)
  ChangeType get changeType => $_getN(4);
  @$pb.TagNumber(6)
  set changeType(ChangeType v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasChangeType() => $_has(4);
  @$pb.TagNumber(6)
  void clearChangeType() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(7)
  set description($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(7)
  void clearDescription() => clearField(7);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
