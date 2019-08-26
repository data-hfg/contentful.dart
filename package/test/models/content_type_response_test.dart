import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('ContentTypeResponse Tests:', () {
    test('returns instance of ContentTypeResponse from json', () {
      final contentTypeResponse =
          ContentTypeResponse.fromJson(loadFixture('content_type_response'));

      expect(contentTypeResponse, const TypeMatcher<ContentTypeResponse>());
    });

    test('returns json string from ContentTypeResponse', () {
      final contentTypeResponse =
          ContentTypeResponse.fromJson(loadFixture('content_type_response'));

      final contentTypeResponseString = contentTypeResponse.toJson();

      expect(contentTypeResponseString, const TypeMatcher<String>());
    });
  });
}
