//
//  Generated code. Do not modify.
//  source: sdv/databroker/v1/broker.proto
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

import 'broker.pb.dart' as $0;

export 'broker.pb.dart';

@$pb.GrpcServiceName('sdv.databroker.v1.Broker')
class BrokerClient extends $grpc.Client {
  static final _$getDatapoints = $grpc.ClientMethod<$0.GetDatapointsRequest, $0.GetDatapointsReply>(
      '/sdv.databroker.v1.Broker/GetDatapoints',
      ($0.GetDatapointsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetDatapointsReply.fromBuffer(value));
  static final _$setDatapoints = $grpc.ClientMethod<$0.SetDatapointsRequest, $0.SetDatapointsReply>(
      '/sdv.databroker.v1.Broker/SetDatapoints',
      ($0.SetDatapointsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetDatapointsReply.fromBuffer(value));
  static final _$subscribe = $grpc.ClientMethod<$0.SubscribeRequest, $0.SubscribeReply>(
      '/sdv.databroker.v1.Broker/Subscribe',
      ($0.SubscribeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SubscribeReply.fromBuffer(value));
  static final _$getMetadata = $grpc.ClientMethod<$0.GetMetadataRequest, $0.GetMetadataReply>(
      '/sdv.databroker.v1.Broker/GetMetadata',
      ($0.GetMetadataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetMetadataReply.fromBuffer(value));

  BrokerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetDatapointsReply> getDatapoints($0.GetDatapointsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDatapoints, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetDatapointsReply> setDatapoints($0.SetDatapointsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setDatapoints, request, options: options);
  }

  $grpc.ResponseStream<$0.SubscribeReply> subscribe($0.SubscribeRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$subscribe, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.GetMetadataReply> getMetadata($0.GetMetadataRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMetadata, request, options: options);
  }
}

@$pb.GrpcServiceName('sdv.databroker.v1.Broker')
abstract class BrokerServiceBase extends $grpc.Service {
  $core.String get $name => 'sdv.databroker.v1.Broker';

  BrokerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetDatapointsRequest, $0.GetDatapointsReply>(
        'GetDatapoints',
        getDatapoints_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetDatapointsRequest.fromBuffer(value),
        ($0.GetDatapointsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetDatapointsRequest, $0.SetDatapointsReply>(
        'SetDatapoints',
        setDatapoints_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetDatapointsRequest.fromBuffer(value),
        ($0.SetDatapointsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SubscribeRequest, $0.SubscribeReply>(
        'Subscribe',
        subscribe_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.SubscribeRequest.fromBuffer(value),
        ($0.SubscribeReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetMetadataRequest, $0.GetMetadataReply>(
        'GetMetadata',
        getMetadata_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetMetadataRequest.fromBuffer(value),
        ($0.GetMetadataReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetDatapointsReply> getDatapoints_Pre($grpc.ServiceCall call, $async.Future<$0.GetDatapointsRequest> request) async {
    return getDatapoints(call, await request);
  }

  $async.Future<$0.SetDatapointsReply> setDatapoints_Pre($grpc.ServiceCall call, $async.Future<$0.SetDatapointsRequest> request) async {
    return setDatapoints(call, await request);
  }

  $async.Stream<$0.SubscribeReply> subscribe_Pre($grpc.ServiceCall call, $async.Future<$0.SubscribeRequest> request) async* {
    yield* subscribe(call, await request);
  }

  $async.Future<$0.GetMetadataReply> getMetadata_Pre($grpc.ServiceCall call, $async.Future<$0.GetMetadataRequest> request) async {
    return getMetadata(call, await request);
  }

  $async.Future<$0.GetDatapointsReply> getDatapoints($grpc.ServiceCall call, $0.GetDatapointsRequest request);
  $async.Future<$0.SetDatapointsReply> setDatapoints($grpc.ServiceCall call, $0.SetDatapointsRequest request);
  $async.Stream<$0.SubscribeReply> subscribe($grpc.ServiceCall call, $0.SubscribeRequest request);
  $async.Future<$0.GetMetadataReply> getMetadata($grpc.ServiceCall call, $0.GetMetadataRequest request);
}
