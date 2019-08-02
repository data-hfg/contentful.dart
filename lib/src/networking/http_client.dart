import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

class HttpClient extends http.BaseClient {
  final http.Client _innerClient;
  final String accessToken;

  factory HttpClient({
    @required String accessToken,
  }) {
    final client = http.Client();
    return HttpClient._internal(client, accessToken);
  }
  HttpClient._internal(this._innerClient, this.accessToken);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['Authorization'] = 'Bearer $accessToken';
    return _innerClient.send(request);
  }
}
