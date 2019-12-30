import 'package:contentful_dart/contentful_dart.dart';
import 'package:matcher/matcher.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockClient extends Mock implements ContentfulHttpClient {}

/// A dummy URL for constructing requests that won't be sent.
Uri get dummyUrl => Uri.parse('http://dartlang.org/');

void main() {
  final accessToken = 'accessToken';

  group('ContentfulHttpClient Tests', () {
    test('Can create ContentfulHttpClient factory', () {
      final client = ContentfulHttpClient(accessToken: accessToken);
      expect(client, const TypeMatcher<ContentfulHttpClient>());
    });
  });
}
