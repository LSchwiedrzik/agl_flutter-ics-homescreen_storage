import 'package:flutter_ics_homescreen/data/models/users.dart';
import 'package:flutter_ics_homescreen/export.dart';
import 'package:uuid/uuid.dart';

import '../models/user.dart';

class UsersNotifier extends StateNotifier<Users> {
  UsersNotifier(super.state) {
    loadUsers();
  }

  void loadUsers() {
    state = state.copyWith(users: _users);
  }

  final List<User> _users = [
    const User(id: '1', name: 'Heather'),
    const User(id: '2', name: 'George'),
    const User(id: '3', name: 'Riley'),
  ];
  void selectUser(String userId) {
    var seletedUser = state.users.firstWhere((user) => user.id == userId);
    state = state.copyWith(selectedUser: seletedUser);
  }

  void removeUser(String userId) {
    state.users.removeWhere((user) => user.id == userId);
    if (state.users.isNotEmpty) {
      state = state.copyWith(selectedUser: state.users.first);
    }
    if (state.users.isEmpty) {
      state = state.copyWith(selectedUser: const User(id: '', name: ''));
    }
  }

  void addUser(String userName) {
    final id = const Uuid().v1();
    final user = User(id: id, name: userName);

    state.users.insert(0, user);
    state = state.copyWith(selectedUser: state.users.first);
  }

  void editUser(User user) {
    // final id = const Uuid().v1();
    // final user = User(id: id, name: userName);
    //_users.add(user);
  }
}
