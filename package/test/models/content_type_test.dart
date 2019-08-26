import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('ContentType Tests:', () {
    test('returns instance of ContentType from json', () {
      final contentType = ContentType.fromJson(loadFixture('content_type'));

      expect(contentType, const TypeMatcher<ContentType>());
    });

    test('returns json string from ContentType', () {
      final contentType = ContentType.fromJson(loadFixture('content_type'));

      final contentTypeString = contentType.toJson();

      expect(contentTypeString, const TypeMatcher<String>());
    });

    test('returns type is  equals  to ContentType', () {
      final contentType = ContentType.fromJson(loadFixture('content_type'));

      expect(contentType.type, equals('ContentType'));
    });

    test('returns type is is  equals  to ContentType', () {
      final contentType = ContentType.fromJson(loadFixture('content_type'));

      expect(contentType.contentId, equals('person'));
    });
  });
}
