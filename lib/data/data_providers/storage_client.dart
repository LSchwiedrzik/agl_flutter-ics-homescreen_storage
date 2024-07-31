import 'package:flutter_ics_homescreen/export.dart';
import 'package:protos/storage-api.dart' as storage_api; 

class StorageClient{
  final StorageConfig config; 
  final Ref ref;
  late storage_api.ClientChannel channel;
  late storage_api.DatabaseClient stub; 

 StorageClient({required this.config, required this.ref}) {
    debugPrint(
        "Connecting to storage service at ${config.hostname}:${config.port}");
    storage_api.ChannelCredentials creds = const storage_api.ChannelCredentials.insecure();
    channel = storage_api.ClientChannel(config.hostname,
        port: config.port, options: storage_api.ChannelOptions(credentials: creds));
    stub = storage_api.DatabaseClient(channel);
  }


  Future<void> destroyDB() async {
    try {
      var response = await stub.destroyDB(storage_api.DestroyArguments());
    } catch (e) {
      print(e);
    }
  }


  Future<void> write(storage_api.KeyValue keyValue) async { 
    try {
      var response = await stub.write(keyValue);
    } catch (e) {
      print(e);
    }
  }
  Future<void> read(storage_api.Key key) async{
    try{
      var response = await stub.read(key);
    } catch(e) {
      print(e);
    }
  } 

  Future<void> delete(storage_api.Key key) async{
    try{
      var response = await stub.delete(key);
    } catch(e) {
      print(e);
    }
  } 

    Future<void> search(storage_api.Key key) async{
    try{
      var response = await stub.search(key);
    } catch(e) {
      print(e);
    }
  } 

    Future<void> deleteNodes(storage_api.Key key) async{
    try{
      var response = await stub.deleteNodes(key);
    } catch(e) {
      print(e);
    }
  } 

    Future<void> listNodes(storage_api.SubtreeInfo subtreeInfo) async{
    try{
      var response = await stub.listNodes(subtreeInfo);
    } catch(e) {
      print(e);
    }
  } 
}