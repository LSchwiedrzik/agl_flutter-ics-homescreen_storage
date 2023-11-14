//
//  Generated code. Do not modify.
//  source: sdv/databroker/v1/collector.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'collector.pb.dart' as $1;

export 'collector.pb.dart';

@$pb.GrpcServiceName('sdv.databroker.v1.Collector')
class CollectorClient extends $grpc.Client {
  static final _$registerDatapoints = $grpc.ClientMethod<$1.RegisterDatapointsRequest, $1.RegisterDatapointsReply>(
      '/sdv.databroker.v1.Collector/RegisterDatapoints',
      ($1.RegisterDatapointsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.RegisterDatapointsReply.fromBuffer(value));
  static final _$updateDatapoints = $grpc.ClientMethod<$1.UpdateDatapointsRequest, $1.UpdateDatapointsReply>(
      '/sdv.databroker.v1.Collector/UpdateDatapoints',
      ($1.UpdateDatapointsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.UpdateDatapointsReply.fromBuffer(value));
  static final _$streamDatapoints = $grpc.ClientMethod<$1.StreamDatapointsRequest, $1.StreamDatapointsReply>(
      '/sdv.databroker.v1.Collector/StreamDatapoints',
      ($1.StreamDatapointsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.StreamDatapointsReply.fromBuffer(value));

  CollectorClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.RegisterDatapointsReply> registerDatapoints($1.RegisterDatapointsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerDatapoints, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateDatapointsReply> updateDatapoints($1.UpdateDatapointsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateDatapoints, request, options: options);
  }

  $grpc.ResponseStream<$1.StreamDatapointsReply> streamDatapoints($async.Stream<$1.StreamDatapointsRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$streamDatapoints, request, options: options);
  }
}

@$pb.GrpcServiceName('sdv.databroker.v1.Collector')
abstract class CollectorServiceBase extends $grpc.Service {
  $core.String get $name => 'sdv.databroker.v1.Collector';

  CollectorServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.RegisterDatapointsRequest, $1.RegisterDatapointsReply>(
        'RegisterDatapoints',
        registerDatapoints_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.RegisterDatapointsRequest.fromBuffer(value),
        ($1.RegisterDatapointsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateDatapointsRequest, $1.UpdateDatapointsReply>(
        'UpdateDatapoints',
        updateDatapoints_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpdateDatapointsRequest.fromBuffer(value),
        ($1.UpdateDatapointsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.StreamDatapointsRequest, $1.StreamDatapointsReply>(
        'StreamDatapoints',
        streamDatapoints,
        true,
        true,
        ($core.List<$core.int> value) => $1.StreamDatapointsRequest.fromBuffer(value),
        ($1.StreamDatapointsReply value) => value.writeToBuffer()));
  }

  $async.Future<$1.RegisterDatapointsReply> registerDatapoints_Pre($grpc.ServiceCall call, $async.Future<$1.RegisterDatapointsRequest> request) async {
    return registerDatapoints(call, await request);
  }

  $async.Future<$1.UpdateDatapointsReply> updateDatapoints_Pre($grpc.ServiceCall call, $async.Future<$1.UpdateDatapointsRequest> request) async {
    return updateDatapoints(call, await request);
  }

  $async.Future<$1.RegisterDatapointsReply> registerDatapoints($grpc.ServiceCall call, $1.RegisterDatapointsRequest request);
  $async.Future<$1.UpdateDatapointsReply> updateDatapoints($grpc.ServiceCall call, $1.UpdateDatapointsRequest request);
  $async.Stream<$1.StreamDatapointsReply> streamDatapoints($grpc.ServiceCall call, $async.Stream<$1.StreamDatapointsRequest> request);
}
