//
//  Generated code. Do not modify.
//  source: sdv/databroker/v1/broker.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'types.pb.dart' as $3;
import 'types.pbenum.dart' as $3;

class GetDatapointsRequest extends $pb.GeneratedMessage {
  factory GetDatapointsRequest({
    $core.Iterable<$core.String>? datapoints,
  }) {
    final $result = create();
    if (datapoints != null) {
      $result.datapoints.addAll(datapoints);
    }
    return $result;
  }
  GetDatapointsRequest._() : super();
  factory GetDatapointsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDatapointsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDatapointsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'sdv.databroker.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'datapoints')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDatapointsRequest clone() => GetDatapointsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDatapointsRequest copyWith(void Function(GetDatapointsRequest) updates) => super.copyWith((message) => updates(message as GetDatapointsRequest)) as GetDatapointsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDatapointsRequest create() => GetDatapointsRequest._();
  GetDatapointsRequest createEmptyInstance() => create();
  static $pb.PbList<GetDatapointsRequest> createRepeated() => $pb.PbList<GetDatapointsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDatapointsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDatapointsRequest>(create);
  static GetDatapointsRequest? _defaultInstance;

  /// A list of requested data points.
  @$pb.TagNumber(1)
  $core.List<$core.String> get datapoints => $_getList(0);
}

class GetDatapointsReply extends $pb.GeneratedMessage {
  factory GetDatapointsReply({
    $core.Map<$core.String, $3.Datapoint>? datapoints,
  }) {
    final $result = create();
    if (datapoints != null) {
      $result.datapoints.addAll(datapoints);
    }
    return $result;
  }
  GetDatapointsReply._() : super();
  factory GetDatapointsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDatapointsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDatapointsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'sdv.databroker.v1'), createEmptyInstance: create)
    ..m<$core.String, $3.Datapoint>(1, _omitFieldNames ? '' : 'datapoints', entryClassName: 'GetDatapointsReply.DatapointsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $3.Datapoint.create, valueDefaultOrMaker: $3.Datapoint.getDefault, packageName: const $pb.PackageName('sdv.databroker.v1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDatapointsReply clone() => GetDatapointsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDatapointsReply copyWith(void Function(GetDatapointsReply) updates) => super.copyWith((message) => updates(message as GetDatapointsReply)) as GetDatapointsReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDatapointsReply create() => GetDatapointsReply._();
  GetDatapointsReply createEmptyInstance() => create();
  static $pb.PbList<GetDatapointsReply> createRepeated() => $pb.PbList<GetDatapointsReply>();
  @$core.pragma('dart2js:noInline')
  static GetDatapointsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDatapointsReply>(create);
  static GetDatapointsReply? _defaultInstance;

  /// Contains the values of the requested data points.
  /// If a requested data point is not available, the corresponding Datapoint
  /// will have the respective failure value set.
  @$pb.TagNumber(1)
  $core.Map<$core.String, $3.Datapoint> get datapoints => $_getMap(0);
}

class SetDatapointsRequest extends $pb.GeneratedMessage {
  factory SetDatapointsRequest({
    $core.Map<$core.String, $3.Datapoint>? datapoints,
  }) {
    final $result = create();
    if (datapoints != null) {
      $result.datapoints.addAll(datapoints);
    }
    return $result;
  }
  SetDatapointsRequest._() : super();
  factory SetDatapointsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetDatapointsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetDatapointsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'sdv.databroker.v1'), createEmptyInstance: create)
    ..m<$core.String, $3.Datapoint>(1, _omitFieldNames ? '' : 'datapoints', entryClassName: 'SetDatapointsRequest.DatapointsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $3.Datapoint.create, valueDefaultOrMaker: $3.Datapoint.getDefault, packageName: const $pb.PackageName('sdv.databroker.v1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetDatapointsRequest clone() => SetDatapointsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetDatapointsRequest copyWith(void Function(SetDatapointsRequest) updates) => super.copyWith((message) => updates(message as SetDatapointsRequest)) as SetDatapointsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetDatapointsRequest create() => SetDatapointsRequest._();
  SetDatapointsRequest createEmptyInstance() => create();
  static $pb.PbList<SetDatapointsRequest> createRepeated() => $pb.PbList<SetDatapointsRequest>();
  @$core.pragma('dart2js:noInline')
  static SetDatapointsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetDatapointsRequest>(create);
  static SetDatapointsRequest? _defaultInstance;

  /// A map of data points to set
  @$pb.TagNumber(1)
  $core.Map<$core.String, $3.Datapoint> get datapoints => $_getMap(0);
}

class SetDatapointsReply extends $pb.GeneratedMessage {
  factory SetDatapointsReply({
    $core.Map<$core.String, $3.DatapointError>? errors,
  }) {
    final $result = create();
    if (errors != null) {
      $result.errors.addAll(errors);
    }
    return $result;
  }
  SetDatapointsReply._() : super();
  factory SetDatapointsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetDatapointsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetDatapointsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'sdv.databroker.v1'), createEmptyInstance: create)
    ..m<$core.String, $3.DatapointError>(1, _omitFieldNames ? '' : 'errors', entryClassName: 'SetDatapointsReply.ErrorsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OE, valueOf: $3.DatapointError.valueOf, enumValues: $3.DatapointError.values, valueDefaultOrMaker: $3.DatapointError.UNKNOWN_DATAPOINT, defaultEnumValue: $3.DatapointError.UNKNOWN_DATAPOINT, packageName: const $pb.PackageName('sdv.databroker.v1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetDatapointsReply clone() => SetDatapointsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetDatapointsReply copyWith(void Function(SetDatapointsReply) updates) => super.copyWith((message) => updates(message as SetDatapointsReply)) as SetDatapointsReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetDatapointsReply create() => SetDatapointsReply._();
  SetDatapointsReply createEmptyInstance() => create();
  static $pb.PbList<SetDatapointsReply> createRepeated() => $pb.PbList<SetDatapointsReply>();
  @$core.pragma('dart2js:noInline')
  static SetDatapointsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetDatapointsReply>(create);
  static SetDatapointsReply? _defaultInstance;

  /// A map of errors (if any)
  @$pb.TagNumber(1)
  $core.Map<$core.String, $3.DatapointError> get errors => $_getMap(0);
}

class SubscribeRequest extends $pb.GeneratedMessage {
  factory SubscribeRequest({
    $core.String? query,
  }) {
    final $result = create();
    if (query != null) {
      $result.query = query;
    }
    return $result;
  }
  SubscribeRequest._() : super();
  factory SubscribeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscribeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubscribeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'sdv.databroker.v1'), createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'query')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscribeRequest clone() => SubscribeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscribeRequest copyWith(void Function(SubscribeRequest) updates) => super.copyWith((message) => updates(message as SubscribeRequest)) as SubscribeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubscribeRequest create() => SubscribeRequest._();
  SubscribeRequest createEmptyInstance() => create();
  static $pb.PbList<SubscribeRequest> createRepeated() => $pb.PbList<SubscribeRequest>();
  @$core.pragma('dart2js:noInline')
  static SubscribeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscribeRequest>(create);
  static SubscribeRequest? _defaultInstance;

  /// Subscribe to a set of data points (or expressions) described
  /// by the provided query.
  /// The query syntax is a subset of SQL and is described in more
  /// detail in the QUERY.md file.
  @$pb.TagNumber(2)
  $core.String get query => $_getSZ(0);
  @$pb.TagNumber(2)
  set query($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(2)
  void clearQuery() => clearField(2);
}

class SubscribeReply extends $pb.GeneratedMessage {
  factory SubscribeReply({
    $core.Map<$core.String, $3.Datapoint>? fields,
  }) {
    final $result = create();
    if (fields != null) {
      $result.fields.addAll(fields);
    }
    return $result;
  }
  SubscribeReply._() : super();
  factory SubscribeReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscribeReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubscribeReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'sdv.databroker.v1'), createEmptyInstance: create)
    ..m<$core.String, $3.Datapoint>(1, _omitFieldNames ? '' : 'fields', entryClassName: 'SubscribeReply.FieldsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $3.Datapoint.create, valueDefaultOrMaker: $3.Datapoint.getDefault, packageName: const $pb.PackageName('sdv.databroker.v1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscribeReply clone() => SubscribeReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscribeReply copyWith(void Function(SubscribeReply) updates) => super.copyWith((message) => updates(message as SubscribeReply)) as SubscribeReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubscribeReply create() => SubscribeReply._();
  SubscribeReply createEmptyInstance() => create();
  static $pb.PbList<SubscribeReply> createRepeated() => $pb.PbList<SubscribeReply>();
  @$core.pragma('dart2js:noInline')
  static SubscribeReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscribeReply>(create);
  static SubscribeReply? _defaultInstance;

  /// Contains the fields specified by the query.
  /// If a requested data point value is not available, the corresponding
  /// Datapoint will have it's respective failure value set.
  @$pb.TagNumber(1)
  $core.Map<$core.String, $3.Datapoint> get fields => $_getMap(0);
}

class GetMetadataRequest extends $pb.GeneratedMessage {
  factory GetMetadataRequest({
    $core.Iterable<$core.String>? names,
  }) {
    final $result = create();
    if (names != null) {
      $result.names.addAll(names);
    }
    return $result;
  }
  GetMetadataRequest._() : super();
  factory GetMetadataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMetadataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMetadataRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'sdv.databroker.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'names')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMetadataRequest clone() => GetMetadataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMetadataRequest copyWith(void Function(GetMetadataRequest) updates) => super.copyWith((message) => updates(message as GetMetadataRequest)) as GetMetadataRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMetadataRequest create() => GetMetadataRequest._();
  GetMetadataRequest createEmptyInstance() => create();
  static $pb.PbList<GetMetadataRequest> createRepeated() => $pb.PbList<GetMetadataRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMetadataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMetadataRequest>(create);
  static GetMetadataRequest? _defaultInstance;

  ///  Request metadata for a list of data points referenced by their names.
  ///  e.g. "Vehicle.Cabin.Seat.Row1.Pos1.Position" or "Vehicle.Speed".
  ///
  ///  If no names are provided, metadata for all known data points will be
  ///  returned.
  @$pb.TagNumber(1)
  $core.List<$core.String> get names => $_getList(0);
}

class GetMetadataReply extends $pb.GeneratedMessage {
  factory GetMetadataReply({
    $core.Iterable<$3.Metadata>? list,
  }) {
    final $result = create();
    if (list != null) {
      $result.list.addAll(list);
    }
    return $result;
  }
  GetMetadataReply._() : super();
  factory GetMetadataReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMetadataReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMetadataReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'sdv.databroker.v1'), createEmptyInstance: create)
    ..pc<$3.Metadata>(1, _omitFieldNames ? '' : 'list', $pb.PbFieldType.PM, subBuilder: $3.Metadata.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMetadataReply clone() => GetMetadataReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMetadataReply copyWith(void Function(GetMetadataReply) updates) => super.copyWith((message) => updates(message as GetMetadataReply)) as GetMetadataReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMetadataReply create() => GetMetadataReply._();
  GetMetadataReply createEmptyInstance() => create();
  static $pb.PbList<GetMetadataReply> createRepeated() => $pb.PbList<GetMetadataReply>();
  @$core.pragma('dart2js:noInline')
  static GetMetadataReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMetadataReply>(create);
  static GetMetadataReply? _defaultInstance;

  /// Contains metadata of the requested data points. If a data point
  /// doesn't exist (i.e. not known to the Data Broker) the corresponding
  /// Metadata isn't part of the returned list.
  @$pb.TagNumber(1)
  $core.List<$3.Metadata> get list => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
