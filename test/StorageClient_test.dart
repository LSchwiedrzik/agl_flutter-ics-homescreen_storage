import 'package:flutter_test/flutter_test.dart';
import 'package:protos/storage-api.dart' as storage_api;
import 'package:flutter_ics_homescreen/export.dart';

import 'package:flutter_ics_homescreen/data/data_providers/storage_client.dart';

// Mock implementation of Ref if necessary
class MockRef extends Ref {
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  late StorageClient storageClient;

   //default nameSpace
  late storage_api.Key keyEmpty;
  late storage_api.Key key1;
  late storage_api.Key key2;
  late storage_api.Key key3;
  late storage_api.Key key4;
  late storage_api.Key keyPartialInfotainment;
  late storage_api.Key keyPartialVehicle;
  
  late storage_api.KeyValue keyValueEmpty;
  late storage_api.KeyValue keyValue1;
  late storage_api.KeyValue keyValue2;
  late storage_api.KeyValue keyValue3;
  late storage_api.KeyValue keyValue4;

  //testSpace nameSpace (non-default) [TS]
  late storage_api.Key key1TS;
  late storage_api.Key key2TS;
  late storage_api.Key key3TS;
  late storage_api.Key key4TS;
  late storage_api.Key key4PartialInfotainmentTS;
  late storage_api.Key keyPartialVehicleTS;
  
  late storage_api.KeyValue keyValue1TS;
  late storage_api.KeyValue keyValue2TS;
  late storage_api.KeyValue keyValue3TS;
  late storage_api.KeyValue keyValue4TS;
  

  setUp(() {
    storageClient = StorageClient(
      config: StorageConfig.defaultConfig(),
      ref: MockRef(),
    );

    //default nameSpace
    keyEmpty = storage_api.Key(key: '');
    keyValueEmpty = storage_api.KeyValue(key: '', value: 'valueEmpty');

    key1 = storage_api.Key(key: 'Vehicle.Infotainment.Radio.CurrentStation');
    keyValue1 = storage_api.KeyValue()
    ..key = 'Vehicle.Infotainment.Radio.CurrentStation'
    ..value = 'testStation';

    key2 = storage_api.Key(key: 'Vehicle.Infotainment.Radio.Volume');
    keyValue2 = storage_api.KeyValue()
    ..key = 'Vehicle.Infotainment.Radio.Volume'
    ..value = '42';

    key3 = storage_api.Key(key: 'Vehicle.Infotainment.HVAC.OutdoorTemperature');
    keyValue3 = storage_api.KeyValue()
    ..key = 'Vehicle.Infotainment.HVAC.OutdoorTemperature'
    ..value = '17';

    key4 = storage_api.Key(key: 'Vehicle.Communication.Radio.Volume');
    keyValue4 = storage_api.KeyValue()
    ..key = 'Vehicle.Communication.Radio.Volume'
    ..value = '42';

    keyPartialInfotainment = storage_api.Key(key: 'Vehicle.Infotainment');
    keyPartialVehicle = storage_api.Key(key: 'Vehicle');


    //testSpace nameSpace (non-default) [TS]
    key1TS = storage_api.Key(key: 'VehicleTS.Infotainment.Radio.CurrentStation', namespace: 'testSpace');
    keyValue1TS = storage_api.KeyValue()
    ..key = 'VehicleTS.Infotainment.Radio.CurrentStation'
    ..value = 'testStation'
    ..namespace= 'testSpace';

    key2TS = storage_api.Key(key: 'VehicleTS.Infotainment.Radio.Volume', namespace: 'testSpace');
    keyValue2TS = storage_api.KeyValue()
    ..key = 'VehicleTS.Infotainment.Radio.Volume'
    ..value = '42'
    ..namespace = 'testSpace';

    key3TS = storage_api.Key(key: 'VehicleTS.Infotainment.HVAC.OutdoorTemperature', namespace: 'testSpace');
    keyValue3TS = storage_api.KeyValue()
    ..key = 'VehicleTS.Infotainment.HVAC.OutdoorTemperature'
    ..value = '17'
    ..namespace = 'testSpace';

    key4TS = storage_api.Key(key: 'VehicleTS.Communication.Radio.Volume', namespace: 'testSpace');
    keyValue4TS = storage_api.KeyValue()
    ..key = 'VehicleTS.Communication.Radio.Volume'
    ..value = '42'
    ..namespace = 'testSpace';

    key4PartialInfotainmentTS = storage_api.Key(key: 'VehicleTS.Infotainment', namespace: 'testSpace');
    keyPartialVehicleTS = storage_api.Key(key: 'VehicleTS', namespace: 'testSpace');
  });

  //prepareTree
  Future prepareTree() async{
    await storageClient.destroyDB();

    //default namespace 
    await storageClient.write(keyValue1);
    await storageClient.write(keyValue2);
    await storageClient.write(keyValue3);
    await storageClient.write(keyValue4);
    
    //testSpace namespace (non-default)
    await storageClient.write(keyValue1TS);
    await storageClient.write(keyValue2TS);
    await storageClient.write(keyValue3TS);
    await storageClient.write(keyValue4TS);
  }
  test('prepareTree ', () async{
    await prepareTree();
    //default namespace 
    final readResponse1 = await storageClient.read(key1);
    final readResponse2 = await storageClient.read(key2);
    final readResponse3 = await storageClient.read(key3);
    final readResponse4 = await storageClient.read(key4);

    //testSpace namespace (non-default)
    final readResponse1TS = await storageClient.read(key1TS);
    final readResponse2TS = await storageClient.read(key2TS);
    final readResponse3TS = await storageClient.read(key3TS);
    final readResponse4TS = await storageClient.read(key4TS);
    
    //default namespace
    expect(readResponse1, isA<storage_api.ReadResponse>()); 
    expect(readResponse1.success, isTrue); 
    expect(readResponse1.result, equals(keyValue1.value));

    expect(readResponse2, isA<storage_api.ReadResponse>()); 
    expect(readResponse2.success, isTrue); 
    expect(readResponse2.result, equals(keyValue2.value));

    expect(readResponse3, isA<storage_api.ReadResponse>()); 
    expect(readResponse3.success, isTrue); 
    expect(readResponse3.result, equals(keyValue3.value));

    expect(readResponse4, isA<storage_api.ReadResponse>()); 
    expect(readResponse4.success, isTrue); 
    expect(readResponse4.result, equals(keyValue4.value)); 

    //testSpace namespace (non-default)
    expect(readResponse1TS, isA<storage_api.ReadResponse>()); 
    expect(readResponse1TS.success, isTrue); 
    expect(readResponse1TS.result, equals(keyValue1TS.value));

    expect(readResponse2TS, isA<storage_api.ReadResponse>()); 
    expect(readResponse2TS.success, isTrue); 
    expect(readResponse2TS.result, equals(keyValue2TS.value));

    expect(readResponse3TS, isA<storage_api.ReadResponse>()); 
    expect(readResponse3TS.success, isTrue); 
    expect(readResponse3TS.result, equals(keyValue3TS.value));

    expect(readResponse4TS, isA<storage_api.ReadResponse>()); 
    expect(readResponse4TS.success, isTrue); 
    expect(readResponse4TS.result, equals(keyValue4TS.value)); 
    await storageClient.destroyDB();
  });

  //Read and Write
  test('write and read node', () async {
    await storageClient.destroyDB();
    // Act
    await storageClient.write(keyValue1);
    final readResponse = await storageClient.read(key1);

    // Assert
    expect(readResponse, isA<storage_api.ReadResponse>()); // Checks if object is of right instance
    expect(readResponse.success, isTrue); // Check if read was successful
    expect(readResponse.result, equals(keyValue1.value)); // Check the result value
    await storageClient.destroyDB();
  });
  
  test('write and read node (non-default namespace) ', () async {
    await storageClient.destroyDB();
    await storageClient.write(keyValue1TS);
    final readResponse = await storageClient.read(key1TS);

    expect(readResponse, isA<storage_api.ReadResponse>());
    expect(readResponse.success, isTrue);
    expect(readResponse.result, equals(keyValue1TS.value));
    await storageClient.destroyDB();
  });

  test('write and read root', () async {
    await storageClient.destroyDB();
    final storage_api.Key keyRoot = storage_api.Key(key: 'Vehicle');
    final storage_api.KeyValue keyValueRoot = storage_api.KeyValue(key: 'Vehicle', value: 'Car1');

    await storageClient.write(keyValueRoot);
    final readResponse = await storageClient.read(keyRoot);

    expect(readResponse, isA<storage_api.ReadResponse>()); 
    expect(readResponse.success, isTrue); 
    expect(readResponse.result, equals(keyValueRoot.value)); 
    await storageClient.destroyDB();
  });

  test('write key with space', () async {
    await storageClient.destroyDB();
    final storage_api.Key keySpace = storage_api.Key(key: 'My Vehicle');
    final storage_api.KeyValue keyValueSpace = storage_api.KeyValue(key: 'My Vehicle', value: 'my Car');

    await storageClient.write(keyValueSpace);
    final readResponse = await storageClient.read(keySpace);

    expect(readResponse, isA<storage_api.ReadResponse>()); 
    expect(readResponse.success, isTrue); 
    expect(readResponse.result, equals(keyValueSpace.value)); 
    await storageClient.destroyDB();
  });
  
    test('write with empty key', () async{
      await storageClient.destroyDB();
      final writeResponse = await storageClient.write(keyValueEmpty);
      expect(writeResponse.success, isFalse);
      expect(writeResponse.message, 'Error when trying to write key \'\' and value \'${keyValueEmpty.value}\': Key cannot be empty string.');
      await storageClient.destroyDB();
    });

    //Search
    test('search substring: Vehicle.Infotainment.Radio', () async {
    await prepareTree();

    final searchResponse = await storageClient.search(storage_api.Key(key: 'Vehicle.Infotainment.Radio'));
    expect(searchResponse, isA<storage_api.ListResponse>());
    expect(searchResponse.success, isTrue);
    expect(searchResponse.result, [
            'Vehicle.Infotainment.Radio.CurrentStation',
            'Vehicle.Infotainment.Radio.Volume']);
    await storageClient.destroyDB();
  });

  test('search substring: Vehicle.Infotainment.Radio (non-default namespace)', () async {
    await prepareTree();

    final searchResponse = await storageClient.search(storage_api.Key(key: 'VehicleTS.Infotainment.Radio', namespace: 'testSpace'));
    expect(searchResponse, isA<storage_api.ListResponse>());
    expect(searchResponse.success, isTrue);
    expect(searchResponse.result, [
            'VehicleTS.Infotainment.Radio.CurrentStation',
            'VehicleTS.Infotainment.Radio.Volume']);
    await storageClient.destroyDB();
  });

  test('search substring: Radio', () async {
    await prepareTree();

    final searchResponse = await storageClient.search(storage_api.Key(key: 'Radio'));
    expect(searchResponse, isA<storage_api.ListResponse>());
    expect(searchResponse.success, isTrue);
    expect(searchResponse.result, [
            'Vehicle.Communication.Radio.Volume',
            'Vehicle.Infotainment.Radio.CurrentStation',
            'Vehicle.Infotainment.Radio.Volume'
          ]);
    await storageClient.destroyDB();
  });

  test('search full key', () async{
    await storageClient.destroyDB();
    await storageClient.write(keyValue1);

    final searchResponse = await storageClient.search(storage_api.Key(key: 'Vehicle.Infotainment.Radio.CurrentStation'));
    expect(searchResponse, isA<storage_api.ListResponse>());
    expect(searchResponse.success, isTrue);

    final keyList = searchResponse.result;
    expect(keyList, contains('Vehicle.Infotainment.Radio.CurrentStation'));
    await storageClient.destroyDB();
  });

  test('search empty key', () async{
    await prepareTree();
    final searchResponse = await storageClient.search(keyEmpty);

    expect(searchResponse.success, isTrue);
    expect((searchResponse.result), [
            'Vehicle.Communication.Radio.Volume',
            'Vehicle.Infotainment.HVAC.OutdoorTemperature',
            'Vehicle.Infotainment.Radio.CurrentStation',
            'Vehicle.Infotainment.Radio.Volume'
          ]); //note: every element of the namespace is returned
    await storageClient.destroyDB();
  });

  //delete
  test('delete verification of a single key with search ', () async {
    await storageClient.destroyDB();
    await storageClient.write(keyValue1); 
    
    //Check before deletion
    final searchResponseBeforeDelete = await storageClient.search(storage_api.Key(key: 'Vehicle.Infotainment.Radio.CurrentStation'));
    expect(searchResponseBeforeDelete, isA<storage_api.ListResponse>());
    expect(searchResponseBeforeDelete.success, isTrue);

    final keyListBeforeDelete = searchResponseBeforeDelete.result;
    expect(keyListBeforeDelete, contains('Vehicle.Infotainment.Radio.CurrentStation'));

    //Deleteion
    await storageClient.delete(storage_api.Key(key: 'Vehicle.Infotainment.Radio.CurrentStation'));

    //Check after deletion
    final searchResponseAfterDelete = await storageClient.search(storage_api.Key(key: 'Vehicle.Infotainment.Radio.CurrentStation'));
    expect(searchResponseAfterDelete, isA<storage_api.ListResponse>());
    expect(searchResponseAfterDelete.success, isTrue);

    final keyListAfterDelete = searchResponseAfterDelete.result;
    expect(keyListAfterDelete, isNot(contains('Vehicle.Infotainment.Radio.CurrentStation')));
  });

  test('delete verification of a single key with search (non-default namespace)', () async {
    await storageClient.destroyDB();
    await storageClient.write(keyValue1TS); 
    
    //Check before deletion
    final searchResponseBeforeDelete = await storageClient.search(storage_api.Key(key: 'VehicleTS.Infotainment.Radio.CurrentStation', namespace: 'testSpace'));
    expect(searchResponseBeforeDelete, isA<storage_api.ListResponse>());
    expect(searchResponseBeforeDelete.success, isTrue);

    final keyListBeforeDelete = searchResponseBeforeDelete.result;
    expect(keyListBeforeDelete, contains('VehicleTS.Infotainment.Radio.CurrentStation'));

    //Deleteion
    await storageClient.delete(storage_api.Key(key: 'VehicleTS.Infotainment.Radio.CurrentStation', namespace: 'testSpace'));

    //Check after deletion
    final searchResponseAfterDelete = await storageClient.search(storage_api.Key(key: 'VehicleTS.Infotainment.Radio.CurrentStation', namespace: 'testSpace'));
    expect(searchResponseAfterDelete, isA<storage_api.ListResponse>());
    expect(searchResponseAfterDelete.success, isTrue);

    final keyListAfterDelete = searchResponseAfterDelete.result;
    expect(keyListAfterDelete, isNot(contains('VehicleTS.Infotainment.Radio.CurrentStation')));
    await storageClient.destroyDB();
  });

    test('delete-key does not exist ', () async{
      await storageClient.destroyDB();
      final deleteResponse = await storageClient.delete(key1);
      expect(deleteResponse.success, isFalse);
      expect(deleteResponse.message, 'Key \'${key1.key}\' does not exist in namespace \'${key1.namespace}\'!');
      await storageClient.destroyDB();
    });

    //destroyDB
    test('DestroyDB', () async{
      await prepareTree();
      await storageClient.destroyDB();
      final searchResponse = await storageClient.search(keyPartialVehicle);
      expect(searchResponse, isA<storage_api.ListResponse>()); 
      expect(searchResponse.success, isTrue);
      expect(searchResponse.result, []);
      await storageClient.destroyDB();
    });

    //deleteNodes
    test('Delete Infotainment node ', () async{
      await prepareTree();
      final deleteNodesResponse = await storageClient.deleteNodes(keyPartialInfotainment);
      expect(deleteNodesResponse, isA<storage_api.StandardResponse>()); 
      expect(deleteNodesResponse.success, isTrue); 

      final searchResponse = await storageClient.search(keyPartialVehicle);
      expect(searchResponse, isA<storage_api.ListResponse>()); 
      expect(searchResponse.success, isTrue); 
      expect(searchResponse.result, [
        'Vehicle.Communication.Radio.Volume']);
        await storageClient.destroyDB(); 
    });

    test('Delete Infotainment node (non-default namespace)', () async{
      await prepareTree();
      final deleteNodesResponse = await storageClient.deleteNodes(key4PartialInfotainmentTS);
      expect(deleteNodesResponse, isA<storage_api.StandardResponse>()); 
      expect(deleteNodesResponse.success, isTrue); 

      final searchResponse = await storageClient.search(keyPartialVehicleTS);
      expect(searchResponse, isA<storage_api.ListResponse>()); 
      expect(searchResponse.success, isTrue); 
      expect(searchResponse.result, [
        'VehicleTS.Communication.Radio.Volume']);
        await storageClient.destroyDB(); 
    });

    test('Delete Vehicle node ', () async{
      await prepareTree();
      final deleteNodesResponse = await storageClient.deleteNodes(keyPartialVehicle);
      expect(deleteNodesResponse, isA<storage_api.StandardResponse>()); 
      expect(deleteNodesResponse.success, isTrue); 

      final searchResponse = await storageClient.search(keyPartialVehicle);
      expect(searchResponse, isA<storage_api.ListResponse>()); 
      expect(searchResponse.success, isTrue); 
      expect(searchResponse.result, []);
      await storageClient.destroyDB(); 
    });

    test('Delete node with empty key ', () async{
      await prepareTree();
      final deleteNodesResponse = await storageClient.deleteNodes(keyEmpty);
      expect(deleteNodesResponse, isA<storage_api.StandardResponse>()); 
      expect(deleteNodesResponse.success, isFalse); 

      final searchResponse = await storageClient.search(keyPartialVehicle);
      expect(searchResponse, isA<storage_api.ListResponse>()); 
      expect(searchResponse.success, isTrue); 
      expect(searchResponse.result, [
        'Vehicle.Communication.Radio.Volume',
        'Vehicle.Infotainment.HVAC.OutdoorTemperature',
        'Vehicle.Infotainment.Radio.CurrentStation',
        'Vehicle.Infotainment.Radio.Volume'
          ]);
      await storageClient.destroyDB(); 
    });

    test('listNodes Vehicle layer null ', () async{
      await prepareTree();
      late storage_api.SubtreeInfo  subtreeInfoVehicle1 = storage_api.SubtreeInfo(layers: null, node: 'Vehicle');
      final listNodesResponse = await storageClient.listNodes(subtreeInfoVehicle1);
      expect(listNodesResponse, isA<storage_api.ListResponse>()); 
      expect(listNodesResponse.success, isTrue); 
      expect(listNodesResponse.result, [
        'Vehicle.Communication', 
        'Vehicle.Infotainment']);
      await storageClient.destroyDB();
    });

    test('listNodes Vehicle layer null (non-default namespace)', () async{
      await prepareTree();
      late storage_api.SubtreeInfo  subtreeInfoVehicle1 = storage_api.SubtreeInfo(layers: null, node: 'VehicleTS', namespace: 'testSpace');
      final listNodesResponse = await storageClient.listNodes(subtreeInfoVehicle1);
      expect(listNodesResponse, isA<storage_api.ListResponse>()); 
      expect(listNodesResponse.success, isTrue); 
      expect(listNodesResponse.result, [
        'VehicleTS.Communication', 
        'VehicleTS.Infotainment']);
      await storageClient.destroyDB();
    });

    test('listNodes Vehicle layer 2 ', () async{
      await prepareTree();
      late storage_api.SubtreeInfo  subtreeInfoVehicle1 = storage_api.SubtreeInfo(layers: 2, node: 'Vehicle');
      final listNodesResponse = await storageClient.listNodes(subtreeInfoVehicle1);
      expect(listNodesResponse, isA<storage_api.ListResponse>()); 
      expect(listNodesResponse.success, isTrue); 
      expect(listNodesResponse.result,  [
        'Vehicle.Communication.Radio',
        'Vehicle.Infotainment.HVAC',
        'Vehicle.Infotainment.Radio']);
      await storageClient.destroyDB();
    });

    test('listNodes Vehicle.infotainment layer null ', () async{
      await prepareTree();
      late storage_api.SubtreeInfo  subtreeInfoVehicle1 = storage_api.SubtreeInfo(layers: null, node: 'Vehicle.Infotainment');
      final listNodesResponse = await storageClient.listNodes(subtreeInfoVehicle1);
      expect(listNodesResponse, isA<storage_api.ListResponse>()); 
      expect(listNodesResponse.success, isTrue); 
      expect(listNodesResponse.result,  [
        'Vehicle.Infotainment.HVAC',
        'Vehicle.Infotainment.Radio']);
      await storageClient.destroyDB();
    });

    test('listNodes Vehicle.infotainment layer -1 ', () async{
      await prepareTree();
      late storage_api.SubtreeInfo  subtreeInfoVehicle1 = storage_api.SubtreeInfo(layers: -1, node: 'Vehicle.Infotainment');
      final listNodesResponse = await storageClient.listNodes(subtreeInfoVehicle1);
      expect(listNodesResponse, isA<storage_api.ListResponse>()); 
      expect(listNodesResponse.success, isFalse); 
      expect(listNodesResponse.result,  []);
      await storageClient.destroyDB();
    });

    test('listNodes node non-existent ', () async{
      await prepareTree();
      late storage_api.SubtreeInfo  subtreeInfoVehicle1 = storage_api.SubtreeInfo(layers: null, node: 'Vehicle.ADAS');
      final listNodesResponse = await storageClient.listNodes(subtreeInfoVehicle1);
      expect(listNodesResponse, isA<storage_api.ListResponse>()); 
      expect(listNodesResponse.success, isFalse); 
      expect(listNodesResponse.result,  []);
      await storageClient.destroyDB();
    });

    test('listNodes layer too large -> no children ', () async{
      await prepareTree();
      late storage_api.SubtreeInfo  subtreeInfoVehicle1 = storage_api.SubtreeInfo(layers: 3, node: 'Vehicle.Infotainment');
      final listNodesResponse = await storageClient.listNodes(subtreeInfoVehicle1);
      expect(listNodesResponse, isA<storage_api.ListResponse>()); 
      expect(listNodesResponse.success, isTrue); 
      expect(listNodesResponse.result,  []);
      await storageClient.destroyDB();
    });

    test('listNodes empty node ', () async{
      await prepareTree();
      late storage_api.SubtreeInfo  subtreeInfoVehicle1 = storage_api.SubtreeInfo(layers: null, node: '');
      final listNodesResponse = await storageClient.listNodes(subtreeInfoVehicle1);
      expect(listNodesResponse, isA<storage_api.ListResponse>()); 
      expect(listNodesResponse.success, isTrue); 
      expect(listNodesResponse.result,  ['Vehicle']);
      await storageClient.destroyDB();
    });
}



