
import 'package:flutter_apptest/ServerApiProvider.dart';
import 'Users.dart';
class UserRepository{
  final serverApi = ServerApiProvider();
  Future<List<User>> getUsersList(){
    return serverApi.getUserList();
  }
}