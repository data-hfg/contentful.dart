import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

class ContentfulHttpClient extends http.BaseClient {
  final http.Client client;
  final String accessToken;

  factory ContentfulHttpClient({
    http.Client client,
    @required String accessToken,
  }) {
    final client = http.Client();
    return ContentfulHttpClient._(client, accessToken);
  }

  ContentfulHttpClient._(this.client, this.accessToken);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['Authorization'] = 'Bearer $accessToken';
    return client.send(request);
  }
}
