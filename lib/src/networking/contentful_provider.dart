import 'dart:io';

import 'package:contentful.dart/src/configuration/host.dart';
import 'package:http/http.dart' as http;

class ContentfulProvider {
  final _baseUrl = Host.delivery.name;

  final http.Client _client;
  ContentfulProvider(this._client);

  Future<void> fetc() async {
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