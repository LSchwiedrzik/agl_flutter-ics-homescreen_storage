//
//  Generated code. Do not modify.
//  source: protos/protos/storage_api.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'storage_api.pb.dart' as $0;
import 'storage_api.pbjson.dart';

export 'storage_api.pb.dart';

abstract class DatabaseServiceBase extends $pb.GeneratedService {
  $async.Future<$0.StandardResponse> destroyDB($pb.ServerContext ctx, $0.DestroyArguments request);
  $async.Future<$0.StandardResponse> write($pb.ServerContext ctx, $0.KeyValue request);
  $async.Future<$0.ReadResponse> read($pb.ServerContext ctx, $0.Key request);
  $async.Future<$0.StandardResponse> delete($pb.ServerContext ctx, $0.Key request);
  $async.Future<$0.ListResponse> search($pb.ServerContext ctx, $0.Key request);
  $async.Future<$0.StandardResponse> deleteNodes($pb.ServerContext ctx, $0.Key request);
  $async.Future<$0.ListResponse> listNodes($pb.ServerContext ctx, $0.SubtreeInfo request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'DestroyDB': return $0.DestroyArguments();
      case 'Write': return $0.KeyValue();
      case 'Read': return $0.Key();
      case 'Delete': return $0.Key();
      case 'Search': return $0.Key();
      case 'DeleteNodes': return $0.Key();
      case 'ListNodes': return $0.SubtreeInfo();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'DestroyDB': return this.destroyDB(ctx, request as $0.DestroyArguments);
      case 'Write': return this.write(ctx, request as $0.KeyValue);
      case 'Read': return this.read(ctx, request as $0.Key);
      case 'Delete': return this.delete(ctx, request as $0.Key);
      case 'Search': return this.search(ctx, request as $0.Key);
      case 'DeleteNodes': return this.deleteNodes(ctx, request as $0.Key);
      case 'ListNodes': return this.listNodes(ctx, request as $0.SubtreeInfo);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => DatabaseServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => DatabaseServiceBase$messageJson;
}

