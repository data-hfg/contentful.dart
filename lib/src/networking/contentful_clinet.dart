import 'dart:io';

import 'package:contentful_dart/src/configuration/host.dart';
import 'package:http/http.dart' as http;

class ContentfulClient {
  final _baseUrl = Host.delivery.name;

  final http.Client _client;
  ContentfulClient(this._client);

  Future<void> getSpaces() async {
    final response = await _client.get(
      '$_baseUrl/questionnaires/id',
      headers: {
        HttpHeaders.acceptHeader: '*/*',
        HttpHeaders.cacheControlHeader: 'no-cache',
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.authorizationHeader: 'Bearer '
      },
    );
    print('fetchQuestionnaireWithId: ${response.statusCode}');
    if (response.statusCode == 200) {
      return;
    }
  }
}
