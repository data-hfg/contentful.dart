import 'package:contentful_dart/contentful_dart.dart';
import 'package:http/http.dart' as http;
import 'package:matcher/matcher.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockClient extends Mock implements ContentfulHttpClient {}

/// A dummy URL for constructing requests that won't be sent.
Uri get dummyUrl => Uri.parse('http://dartlang.org/');

void main() {
  final accessToken = 'accessToken';
  final headers = {'Authorization': 'Bearer accessToken'};

  group('ContentfulHttpClient Tests', () {
    test('Can create ContentfulHttpClient factory & Send Authorization header ',
        () {
      final client = ContentfulHttpClient(accessToken: accessToken);

      final request = http.Request('GET', dummyUrl);
      client.send(request);

      expect(client, const TypeMatcher<ContentfulHttpClient>());
      expect(request.headers, headers);
    });
  });
}
