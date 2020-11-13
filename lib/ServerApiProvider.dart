import 'package:flutter_apptest/Users.dart';
import 'package:http/http.dart';
import 'dart:convert';
class ServerApiProvider {
  final Client _client;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/users';
  ServerApiProvider({Client client}) : _client = client ?? Client();

  Future<List<User>> getUserList() async {
    //final response = await _client.post(_baseUrl);
    final response = await _client.get(_baseUrl);
    if (response.statusCode == 200) {
      return Users.fromJson(json.decode(response.body)).results;
    } else {
      throw Exception('Failed to get popular movie list.');
    }

  }

}
