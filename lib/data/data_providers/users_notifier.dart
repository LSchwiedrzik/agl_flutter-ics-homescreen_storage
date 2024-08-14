import 'package:flutter_ics_homescreen/data/models/users.dart';
import 'package:flutter_ics_homescreen/export.dart';
import 'package:uuid/uuid.dart';

import '../models/user.dart';

import 'package:protos/storage-api.dart' as storage_api;
import 'initializeSettings.dart';

class UsersNotifier extends Notifier<Users> {
  //New build function because of the provider change
  @override
  Users build() {
    // Initialize default state
    state = Users.initial();
    loadUsers();
    return state;
  }

  Future <void> loadSettingsUsers() async {
    final storageClient = ref.read(storageClientProvider);
    try {
      //access users branch
      final searchResponseUsers = await storageClient.search(storage_api.Key(key: VSSPath.vehicleUsers));
      //add default users if no users are inside the storage API
      if (searchResponseUsers.result.isEmpty) {
        loadUsers();
        await storageClient.write(storage_api.KeyValue(key: '${VSSPath.vehicleUsers}.${_users[0].id}.id', value: _users[0].id));
        await storageClient.write(storage_api.KeyValue(key: '${VSSPath.vehicleUsers}.${_users[0].id}.name', value: _users[0].name));
        await storageClient.write(storage_api.KeyValue(key: '${VSSPath.vehicleUsers}.${_users[1].id}.id', value: _users[1].id));
        await storageClient.write(storage_api.KeyValue(key: '${VSSPath.vehicleUsers}.${_users[1].id}.name', value: _users[1].name));
        await storageClient.write(storage_api.KeyValue(key: '${VSSPath.vehicleUsers}.${_users[2].id}.id', value: _users[2].id));
        await storageClient.write(storage_api.KeyValue(key: '${VSSPath.vehicleUsers}.${_users[2].id}.name', value: _users[2].name));
        await selectUser(_users[0].id);
      }
      else {
        List<User> users = [];
        List<String> idList = [];
        //get list of all ids
        for (var key in searchResponseUsers.result) {
          var readResponse = await storageClient.read(storage_api.Key(key: key));
          if (key.contains('.id')) {
            idList.insert(0, readResponse.result);
          }
        }
        //extract names corresponding to ids
        for (var id in idList) {
          var readResponse = await storageClient.read(storage_api.Key(key:'${VSSPath.vehicleUsers}.$id.name'));
          users.insert(0, User(id: id, name: readResponse.result));
        }
        //extract id of selected user
        final readResponseSelectedUser = await storageClient.read(storage_api.Key(key: VSSPath.vehicleCurrentUser));
        User selectedUser;
        final userCurrentId =  readResponseSelectedUser.result;
        //extract name of selected user
        final readResponseCurrentUserName = await storageClient.read(storage_api.Key(key: '${VSSPath.vehicleUsers}.$userCurrentId.name'));
        final userCurrentName = readResponseCurrentUserName.result;
        selectedUser = User(id: userCurrentId, name: userCurrentName);
        state =  Users(users: users, selectedUser: selectedUser);
      }
    } catch (e) {
        print('Error loading settings for units: $e');
        loadUsers(); // Fallback to initial defaults if error
        state = state.copyWith(selectedUser: _users[0]);
    }
  }

  void loadUsers() {
    state = state.copyWith(users: _users);
  }

  final List<User> _users = [
    const User(id: '1', name: 'Heather'),
    const User(id: '2', name: 'George'),
    const User(id: '3', name: 'Riley'),
  ];
  
  Future <void> selectUser(String userId) async {
    final storageClient = ref.read(storageClientProvider);
    var seletedUser = state.users.firstWhere((user) => user.id == userId); //need to load functions
    state = state.copyWith(selectedUser: seletedUser);
    //write to storage API
    try {
      await storageClient.write(storage_api.KeyValue(
        key: VSSPath.vehicleCurrentUser,
        value: userId,
      ));
    } catch (e) {
      print('Error saving user: $e');
    }
    
    try {
      await initializeSettingsUser(ref);
    } catch (e) {
      print('Error loading settings of user: $e');
    }
    
  }

  Future <void> removeUser(String userId) async {
    final storageClient = ref.read(storageClientProvider);
    state.users.removeWhere((user) => user.id == userId);
    if (state.users.isNotEmpty) {
      state = state.copyWith(selectedUser: state.users.first);
      //delete from storage API
      try {
        final searchResponse = await storageClient.search(storage_api.Key(key: userId));
        final keyList = searchResponse.result;
        for (final key in keyList) {
          await storageClient.delete(storage_api.Key(
          key: key
          ));
        }
      } catch (e) {
        print('Error removing user with id $userId: $e');
      }
    }
    if (state.users.isEmpty) {
      state = state.copyWith(selectedUser: const User(id: '0', name: ''));
    }
  }

  Future <void> addUser(String userName) async {
    final storageClient = ref.read(storageClientProvider);
    final id = const Uuid().v1();
    final user = User(id: id, name: userName);
    state.users.insert(0, user);
    //new user automaticaly selected
    await selectUser(user.id); 
    //write to storage API
    try {
      await storageClient.write(storage_api.KeyValue(
        key: '${VSSPath.vehicleUsers}.$id.name',
        value: userName
      ));
      await storageClient.write(storage_api.KeyValue(
        key: '${VSSPath.vehicleUsers}.$id.id',
        value: id
      ));
    } catch (e) {
      print('Error adding user with id $id: $e');
    }
  }

  void editUser(User user) {
    // final id = const Uuid().v1();
    // final user = User(id: id, name: userName);
    //_users.add(user);
  }
}
