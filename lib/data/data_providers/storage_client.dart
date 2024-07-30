import 'package:flutter_ics_homescreen/export.dart';
import 'package:protos/storage-api.dart' as storage_api; //includes storage_api.pbserver unlike radio
class StorageClient{
  final RadioConfig config; //StorageConfig no class, RadioConfic part of app_config_provider
  final Ref ref;
  late storage_api.ClientChannel channel;
  late storage_api.DatabaseServiceBase stub; // RadioClient extents $grpc.Client in radio.pbgrpc.dart, .pbgrpc.dart

 StorageClient({required this.config, required this.ref}) { //construcor
    debugPrint(
        "Connecting to radio service at ${config.hostname}:${config.port}");
    storage_api.ChannelCredentials creds = const storage_api.ChannelCredentials.insecure();
    channel = storage_api.ClientChannel(config.hostname,
        port: config.port, options: storage_api.ChannelOptions(credentials: creds));
    stub = storage_api.DatabaseServiceBase(channel);
  }

// TODO: 'DestroyDB'
// TODO: 'Write'
// TODO:  'Delete'
// TODO: 'Search'
// TODO: 'DeleteNodes'
// TODO: 'ListNodes'
}