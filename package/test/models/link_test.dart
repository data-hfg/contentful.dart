import 'package:built_value_test/matcher.dart';
import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('Link Tests:', () {
    test('returns instance of Link from json', () {
      final linkResponse = Link.fromJson(loadFixture('link'));

      expect(linkResponse, const TypeMatcher<Link>());
    });

    test('returns json string from Link', () {
      final linkResponse = Link.fromJson(loadFixture('link'));

      final linkTypeResponseString = linkResponse.toJson();

      expect(linkTypeResponseString, const TypeMatcher<String>());
    });

    test('built_value matcher', () {
      final value = Link(
        (b) => b
          ..asset = Asset(
            (b) => b
              ..fields = AssetFields(
                (b) => b
                  ..title = 'title'
                  ..file = AssetFile(
                    (b) => b
                      ..contentType = 'contentType'
                      ..fileName = 'fileName'
                      ..url = 'url'
                      ..details = AssetFileDetails(
                        (b) => b
                          ..size = 100
                          ..image = AssetFileDetailsImage(
                            (b) => b
                              ..height = 100
                              ..width = 200,
                          ).toBuilder(),
                      ).toBuilder(),
                  ).toBuilder(),
              ).toBuilder()
              ..sys = SystemFields(
                (b) => b
                  ..contentType = 'contentType'
                  ..contentTypeId = 'contentTypeId'
                  ..createdAt = 'createdAt'
                  ..createdBy = 'createdBy'
                  ..firstPublishedAt = 'firstPublishedAt'
                  ..id = 'id'
                  ..locale = 'locale'
                  ..publishedAt = 'publishedAt'
                  ..publishedBy = 'publishedBy'
                  ..publishedCounter = 1
                  ..publishedVersion = 2
                  ..revision = 3
                  ..type = 'type'
                  ..updatedAt = 'updatedAt'
                  ..updatedBy = 'updatedBy'
                  ..version = 1,
              ).toBuilder(),
          ).toBuilder()
          ..sys = SystemFields(
            (b) => b
              ..contentType = 'contentType'
              ..contentTypeId = 'contentTypeId'
              ..createdAt = 'createdAt'
              ..createdBy = 'createdBy'
              ..firstPublishedAt = 'firstPublishedAt'
              ..id = 'id'
              ..locale = 'locale'
              ..publishedAt = 'publishedAt'
              ..publishedBy = 'publishedBy'
              ..publishedCounter = 1
              ..publishedVersion = 2
              ..revision = 3
              ..type = 'type'
              ..updatedAt = 'updatedAt'
              ..updatedBy = 'updatedBy'
              ..version = 1,
          ).toBuilder(),
      );

      expect(value, equalsBuilt(value));
    });

    test('compared value matcher', () {
      final value = Link(
        (b) => b
          ..asset = Asset(
            (b) => b
              ..fields = AssetFields(
                (b) => b
                  ..title = 'title'
                  ..file = AssetFile(
                    (b) => b
                      ..contentType = 'contentType'
                      ..fileName = 'fileName'
                      ..url = 'url'
                      ..details = AssetFileDetails(
                        (b) => b
                          ..size = 100
                          ..image = AssetFileDetailsImage(
                            (b) => b
                              ..height = 100
                              ..width = 200,
                          ).toBuilder(),
                      ).toBuilder(),
                  ).toBuilder(),
              ).toBuilder()
              ..sys = SystemFields(
                (b) => b
                  ..contentType = 'contentType'
                  ..contentTypeId = 'contentTypeId'
                  ..createdAt = 'createdAt'
                  ..createdBy = 'createdBy'
                  ..firstPublishedAt = 'firstPublishedAt'
                  ..id = 'id'
                  ..locale = 'locale'
                  ..publishedAt = 'publishedAt'
                  ..publishedBy = 'publishedBy'
                  ..publishedCounter = 1
                  ..publishedVersion = 2
                  ..revision = 3
                  ..type = 'type'
                  ..updatedAt = 'updatedAt'
                  ..updatedBy = 'updatedBy'
                  ..version = 1,
              ).toBuilder(),
          ).toBuilder()
          ..sys = SystemFields(
            (b) => b
              ..contentType = 'contentType'
              ..contentTypeId = 'contentTypeId'
              ..createdAt = 'createdAt'
              ..createdBy = 'createdBy'
              ..firstPublishedAt = 'firstPublishedAt'
              ..id = 'id'
              ..locale = 'locale'
              ..publishedAt = 'publishedAt'
              ..publishedBy = 'publishedBy'
              ..publishedCounter = 1
              ..publishedVersion = 2
              ..revision = 3
              ..type = 'type'
              ..updatedAt = 'updatedAt'
              ..updatedBy = 'updatedBy'
              ..version = 1,
          ).toBuilder(),
      );

      final otherValue = Link(
        (b) => b
          ..asset = Asset(
            (b) => b
              ..fields = AssetFields(
                (b) => b
                  ..title = 'title'
                  ..file = AssetFile(
                    (b) => b
                      ..contentType = 'contentType'
                      ..fileName = 'fileName'
                      ..url = 'url'
                      ..details = AssetFileDetails(
                        (b) => b
                          ..size = 100
                          ..image = AssetFileDetailsImage(
                            (b) => b
                              ..height = 100
                              ..width = 200,
                          ).toBuilder(),
                      ).toBuilder(),
                  ).toBuilder(),
              ).toBuilder()
              ..sys = SystemFields(
                (b) => b
                  ..contentType = 'contentType'
                  ..contentTypeId = 'contentTypeId'
                  ..createdAt = 'createdAt'
                  ..createdBy = 'createdBy'
                  ..firstPublishedAt = 'firstPublishedAt'
                  ..id = 'id'
                  ..locale = 'locale'
                  ..publishedAt = 'publishedAt'
                  ..publishedBy = 'publishedBy'
                  ..publishedCounter = 1
                  ..publishedVersion = 2
                  ..revision = 3
                  ..type = 'type'
                  ..updatedAt = 'updatedAt'
                  ..updatedBy = 'updatedBy'
                  ..version = 1,
              ).toBuilder(),
          ).toBuilder()
          ..sys = SystemFields(
            (b) => b
              ..contentType = 'contentType'
              ..contentTypeId = 'contentTypeId'
              ..createdAt = 'createdAt'
              ..createdBy = 'createdBy'
              ..firstPublishedAt = 'firstPublishedAt'
              ..id = 'id'
              ..locale = 'locale'
              ..publishedAt = 'publishedAt'
              ..publishedBy = 'publishedBy'
              ..publishedCounter = 1
              ..publishedVersion = 2
              ..revision = 3
              ..type = 'type'
              ..updatedAt = 'updatedAt'
              ..updatedBy = 'updatedBy'
              ..version = 1,
          ).toBuilder(),
      );

      expect(value, otherValue);
    });

    test('reports if not same', () {
      final value = Link(
        (b) => b
          ..asset = Asset(
            (b) => b
              ..fields = AssetFields(
                (b) => b
                  ..title = 'title'
                  ..file = AssetFile(
                    (b) => b
                      ..contentType = 'contentType'
                      ..fileName = 'fileName'
                      ..url = 'url'
                      ..details = AssetFileDetails(
                        (b) => b
                          ..size = 100
                          ..image = AssetFileDetailsImage(
                            (b) => b
                              ..height = 100
                              ..width = 200,
                          ).toBuilder(),
                      ).toBuilder(),
                  ).toBuilder(),
              ).toBuilder()
              ..sys = SystemFields(
                (b) => b
                  ..contentType = 'contentType'
                  ..contentTypeId = 'contentTypeId'
                  ..createdAt = 'createdAt'
                  ..createdBy = 'createdBy'
                  ..firstPublishedAt = 'firstPublishedAt'
                  ..id = 'id'
                  ..locale = 'locale'
                  ..publishedAt = 'publishedAt'
                  ..publishedBy = 'publishedBy'
                  ..publishedCounter = 1
                  ..publishedVersion = 2
                  ..revision = 3
                  ..type = 'type'
                  ..updatedAt = 'updatedAt'
                  ..updatedBy = 'updatedBy'
                  ..version = 1,
              ).toBuilder(),
          ).toBuilder()
          ..sys = SystemFields(
            (b) => b
              ..contentType = 'contentType'
              ..contentTypeId = 'contentTypeId'
              ..createdAt = 'createdAt'
              ..createdBy = 'createdBy'
              ..firstPublishedAt = 'firstPublishedAt'
              ..id = 'id'
              ..locale = 'locale'
              ..publishedAt = 'publishedAt'
              ..publishedBy = 'publishedBy'
              ..publishedCounter = 1
              ..publishedVersion = 2
              ..revision = 3
              ..type = 'type'
              ..updatedAt = 'updatedAt'
              ..updatedBy = 'updatedBy'
              ..version = 1,
          ).toBuilder(),
      );

      final otherValue = value.rebuild(
        (b) => b..sys.version = -1,
      );

      expectMismatch(value, otherValue, '');
    });
  });
}
