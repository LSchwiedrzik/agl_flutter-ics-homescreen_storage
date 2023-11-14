//
//  Generated code. Do not modify.
//  source: kuksa/val/v1/val.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'types.pb.dart' as $2;
import 'types.pbenum.dart' as $2;

/// Define which data we want
class EntryRequest extends $pb.GeneratedMessage {
  factory EntryRequest({
    $core.String? path,
    $2.View? view,
    $core.Iterable<$2.Field>? fields,
  }) {
    final $result = create();
    if (path != null) {
      $result.path = path;
    }
    if (view != null) {
      $result.view = view;
    }
    if (fields != null) {
      $result.fields.addAll(fields);
    }
    return $result;
  }
  EntryRequest._() : super();
  factory EntryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EntryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EntryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..e<$2.View>(2, _omitFieldNames ? '' : 'view', $pb.PbFieldType.OE, defaultOrMaker: $2.View.VIEW_UNSPECIFIED, valueOf: $2.View.valueOf, enumValues: $2.View.values)
    ..pc<$2.Field>(3, _omitFieldNames ? '' : 'fields', $pb.PbFieldType.KE, valueOf: $2.Field.valueOf, enumValues: $2.Field.values, defaultEnumValue: $2.Field.FIELD_UNSPECIFIED)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EntryRequest clone() => EntryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EntryRequest copyWith(void Function(EntryRequest) updates) => super.copyWith((message) => updates(message as EntryRequest)) as EntryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EntryRequest create() => EntryRequest._();
  EntryRequest createEmptyInstance() => create();
  static $pb.PbList<EntryRequest> createRepeated() => $pb.PbList<EntryRequest>();
  @$core.pragma('dart2js:noInline')
  static EntryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EntryRequest>(create);
  static EntryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => clearField(1);

  @$pb.TagNumber(2)
  $2.View get view => $_getN(1);
  @$pb.TagNumber(2)
  set view($2.View v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasView() => $_has(1);
  @$pb.TagNumber(2)
  void clearView() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$2.Field> get fields => $_getList(2);
}

/// Request a set of entries.
class GetRequest extends $pb.GeneratedMessage {
  factory GetRequest({
    $core.Iterable<EntryRequest>? entries,
  }) {
    final $result = create();
    if (entries != null) {
      $result.entries.addAll(entries);
    }
    return $result;
  }
  GetRequest._() : super();
  factory GetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..pc<EntryRequest>(1, _omitFieldNames ? '' : 'entries', $pb.PbFieldType.PM, subBuilder: EntryRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRequest clone() => GetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRequest copyWith(void Function(GetRequest) updates) => super.copyWith((message) => updates(message as GetRequest)) as GetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRequest create() => GetRequest._();
  GetRequest createEmptyInstance() => create();
  static $pb.PbList<GetRequest> createRepeated() => $pb.PbList<GetRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRequest>(create);
  static GetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<EntryRequest> get entries => $_getList(0);
}

/// Global errors are specified in `error`.
/// Errors for individual entries are specified in `errors`.
class GetResponse extends $pb.GeneratedMessage {
  factory GetResponse({
    $core.Iterable<$2.DataEntry>? entries,
    $core.Iterable<$2.DataEntryError>? errors,
    $2.Error? error,
  }) {
    final $result = create();
    if (entries != null) {
      $result.entries.addAll(entries);
    }
    if (errors != null) {
      $result.errors.addAll(errors);
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GetResponse._() : super();
  factory GetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..pc<$2.DataEntry>(1, _omitFieldNames ? '' : 'entries', $pb.PbFieldType.PM, subBuilder: $2.DataEntry.create)
    ..pc<$2.DataEntryError>(2, _omitFieldNames ? '' : 'errors', $pb.PbFieldType.PM, subBuilder: $2.DataEntryError.create)
    ..aOM<$2.Error>(3, _omitFieldNames ? '' : 'error', subBuilder: $2.Error.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetResponse clone() => GetResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetResponse copyWith(void Function(GetResponse) updates) => super.copyWith((message) => updates(message as GetResponse)) as GetResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetResponse create() => GetResponse._();
  GetResponse createEmptyInstance() => create();
  static $pb.PbList<GetResponse> createRepeated() => $pb.PbList<GetResponse>();
  @$core.pragma('dart2js:noInline')
  static GetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetResponse>(create);
  static GetResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$2.DataEntry> get entries => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$2.DataEntryError> get errors => $_getList(1);

  @$pb.TagNumber(3)
  $2.Error get error => $_getN(2);
  @$pb.TagNumber(3)
  set error($2.Error v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);
  @$pb.TagNumber(3)
  $2.Error ensureError() => $_ensure(2);
}

/// Define the data we want to set
class EntryUpdate extends $pb.GeneratedMessage {
  factory EntryUpdate({
    $2.DataEntry? entry,
    $core.Iterable<$2.Field>? fields,
  }) {
    final $result = create();
    if (entry != null) {
      $result.entry = entry;
    }
    if (fields != null) {
      $result.fields.addAll(fields);
    }
    return $result;
  }
  EntryUpdate._() : super();
  factory EntryUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EntryUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EntryUpdate', package: const $pb.PackageName(_omitMessageNames ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..aOM<$2.DataEntry>(1, _omitFieldNames ? '' : 'entry', subBuilder: $2.DataEntry.create)
    ..pc<$2.Field>(2, _omitFieldNames ? '' : 'fields', $pb.PbFieldType.KE, valueOf: $2.Field.valueOf, enumValues: $2.Field.values, defaultEnumValue: $2.Field.FIELD_UNSPECIFIED)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EntryUpdate clone() => EntryUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EntryUpdate copyWith(void Function(EntryUpdate) updates) => super.copyWith((message) => updates(message as EntryUpdate)) as EntryUpdate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EntryUpdate create() => EntryUpdate._();
  EntryUpdate createEmptyInstance() => create();
  static $pb.PbList<EntryUpdate> createRepeated() => $pb.PbList<EntryUpdate>();
  @$core.pragma('dart2js:noInline')
  static EntryUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EntryUpdate>(create);
  static EntryUpdate? _defaultInstance;

  @$pb.TagNumber(1)
  $2.DataEntry get entry => $_getN(0);
  @$pb.TagNumber(1)
  set entry($2.DataEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntry() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntry() => clearField(1);
  @$pb.TagNumber(1)
  $2.DataEntry ensureEntry() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$2.Field> get fields => $_getList(1);
}

/// A list of entries to be updated
class SetRequest extends $pb.GeneratedMessage {
  factory SetRequest({
    $core.Iterable<EntryUpdate>? updates,
  }) {
    final $result = create();
    if (updates != null) {
      $result.updates.addAll(updates);
    }
    return $result;
  }
  SetRequest._() : super();
  factory SetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..pc<EntryUpdate>(1, _omitFieldNames ? '' : 'updates', $pb.PbFieldType.PM, subBuilder: EntryUpdate.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetRequest clone() => SetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetRequest copyWith(void Function(SetRequest) updates) => super.copyWith((message) => updates(message as SetRequest)) as SetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetRequest create() => SetRequest._();
  SetRequest createEmptyInstance() => create();
  static $pb.PbList<SetRequest> createRepeated() => $pb.PbList<SetRequest>();
  @$core.pragma('dart2js:noInline')
  static SetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetRequest>(create);
  static SetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<EntryUpdate> get updates => $_getList(0);
}

/// Global errors are specified in `error`.
/// Errors for individual entries are specified in `errors`.
class SetResponse extends $pb.GeneratedMessage {
  factory SetResponse({
    $2.Error? error,
    $core.Iterable<$2.DataEntryError>? errors,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    if (errors != null) {
      $result.errors.addAll(errors);
    }
    return $result;
  }
  SetResponse._() : super();
  factory SetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..aOM<$2.Error>(1, _omitFieldNames ? '' : 'error', subBuilder: $2.Error.create)
    ..pc<$2.DataEntryError>(2, _omitFieldNames ? '' : 'errors', $pb.PbFieldType.PM, subBuilder: $2.DataEntryError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetResponse clone() => SetResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetResponse copyWith(void Function(SetResponse) updates) => super.copyWith((message) => updates(message as SetResponse)) as SetResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetResponse create() => SetResponse._();
  SetResponse createEmptyInstance() => create();
  static $pb.PbList<SetResponse> createRepeated() => $pb.PbList<SetResponse>();
  @$core.pragma('dart2js:noInline')
  static SetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetResponse>(create);
  static SetResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Error get error => $_getN(0);
  @$pb.TagNumber(1)
  set error($2.Error v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  $2.Error ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$2.DataEntryError> get errors => $_getList(1);
}

/// Define what to subscribe to
class SubscribeEntry extends $pb.GeneratedMessage {
  factory SubscribeEntry({
    $core.String? path,
    $2.View? view,
    $core.Iterable<$2.Field>? fields,
  }) {
    final $result = create();
    if (path != null) {
      $result.path = path;
    }
    if (view != null) {
      $result.view = view;
    }
    if (fields != null) {
      $result.fields.addAll(fields);
    }
    return $result;
  }
  SubscribeEntry._() : super();
  factory SubscribeEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscribeEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubscribeEntry', package: const $pb.PackageName(_omitMessageNames ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..e<$2.View>(2, _omitFieldNames ? '' : 'view', $pb.PbFieldType.OE, defaultOrMaker: $2.View.VIEW_UNSPECIFIED, valueOf: $2.View.valueOf, enumValues: $2.View.values)
    ..pc<$2.Field>(3, _omitFieldNames ? '' : 'fields', $pb.PbFieldType.KE, valueOf: $2.Field.valueOf, enumValues: $2.Field.values, defaultEnumValue: $2.Field.FIELD_UNSPECIFIED)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscribeEntry clone() => SubscribeEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscribeEntry copyWith(void Function(SubscribeEntry) updates) => super.copyWith((message) => updates(message as SubscribeEntry)) as SubscribeEntry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubscribeEntry create() => SubscribeEntry._();
  SubscribeEntry createEmptyInstance() => create();
  static $pb.PbList<SubscribeEntry> createRepeated() => $pb.PbList<SubscribeEntry>();
  @$core.pragma('dart2js:noInline')
  static SubscribeEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscribeEntry>(create);
  static SubscribeEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => clearField(1);

  @$pb.TagNumber(2)
  $2.View get view => $_getN(1);
  @$pb.TagNumber(2)
  set view($2.View v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasView() => $_has(1);
  @$pb.TagNumber(2)
  void clearView() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$2.Field> get fields => $_getList(2);
}

/// Subscribe to changes in datapoints.
class SubscribeRequest extends $pb.GeneratedMessage {
  factory SubscribeRequest({
    $core.Iterable<SubscribeEntry>? entries,
  }) {
    final $result = create();
    if (entries != null) {
      $result.entries.addAll(entries);
    }
    return $result;
  }
  SubscribeRequest._() : super();
  factory SubscribeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscribeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubscribeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..pc<SubscribeEntry>(1, _omitFieldNames ? '' : 'entries', $pb.PbFieldType.PM, subBuilder: SubscribeEntry.create)
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

  @$pb.TagNumber(1)
  $core.List<SubscribeEntry> get entries => $_getList(0);
}

/// A subscription response
class SubscribeResponse extends $pb.GeneratedMessage {
  factory SubscribeResponse({
    $core.Iterable<EntryUpdate>? updates,
  }) {
    final $result = create();
    if (updates != null) {
      $result.updates.addAll(updates);
    }
    return $result;
  }
  SubscribeResponse._() : super();
  factory SubscribeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscribeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubscribeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..pc<EntryUpdate>(1, _omitFieldNames ? '' : 'updates', $pb.PbFieldType.PM, subBuilder: EntryUpdate.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscribeResponse clone() => SubscribeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscribeResponse copyWith(void Function(SubscribeResponse) updates) => super.copyWith((message) => updates(message as SubscribeResponse)) as SubscribeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubscribeResponse create() => SubscribeResponse._();
  SubscribeResponse createEmptyInstance() => create();
  static $pb.PbList<SubscribeResponse> createRepeated() => $pb.PbList<SubscribeResponse>();
  @$core.pragma('dart2js:noInline')
  static SubscribeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscribeResponse>(create);
  static SubscribeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<EntryUpdate> get updates => $_getList(0);
}

class GetServerInfoRequest extends $pb.GeneratedMessage {
  factory GetServerInfoRequest() => create();
  GetServerInfoRequest._() : super();
  factory GetServerInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetServerInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetServerInfoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetServerInfoRequest clone() => GetServerInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetServerInfoRequest copyWith(void Function(GetServerInfoRequest) updates) => super.copyWith((message) => updates(message as GetServerInfoRequest)) as GetServerInfoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetServerInfoRequest create() => GetServerInfoRequest._();
  GetServerInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetServerInfoRequest> createRepeated() => $pb.PbList<GetServerInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetServerInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetServerInfoRequest>(create);
  static GetServerInfoRequest? _defaultInstance;
}

class GetServerInfoResponse extends $pb.GeneratedMessage {
  factory GetServerInfoResponse({
    $core.String? name,
    $core.String? version,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (version != null) {
      $result.version = version;
    }
    return $result;
  }
  GetServerInfoResponse._() : super();
  factory GetServerInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetServerInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetServerInfoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetServerInfoResponse clone() => GetServerInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetServerInfoResponse copyWith(void Function(GetServerInfoResponse) updates) => super.copyWith((message) => updates(message as GetServerInfoResponse)) as GetServerInfoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetServerInfoResponse create() => GetServerInfoResponse._();
  GetServerInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetServerInfoResponse> createRepeated() => $pb.PbList<GetServerInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetServerInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetServerInfoResponse>(create);
  static GetServerInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
