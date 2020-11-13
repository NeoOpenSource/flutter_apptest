
import 'dart:io';
import 'package:http/http.dart';
import 'package:flutter_apptest/ServerApiProvider.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockClient extends Mock implements Client {}

void main() {
  //MockClient client;
  ServerApiProvider serverApiProvider;
  Client client;
  setUp(() {
    //client = MockClient();
    client = Client();
    serverApiProvider = ServerApiProvider(client: client);
  });
  group('Test call fetch nowPlayingMovieList API', () {
    test('Success fetch nowPlayingMovieList', () async {
      final result = await serverApiProvider.getUserList();
      expect(result.length, 10);
    });

  }
  );


}