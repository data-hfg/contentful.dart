import 'package:built_value_test/matcher.dart';
import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('Asset Tests:', () {
    test('returns instance of Asset from json', () {
      final asset = Asset.fromJson(loadFixture('asset'));

      expect(asset, const TypeMatcher<Asset>());
    });

    test('returns json string from Asset', () {
      final asset = Asset.fromJson(loadFixture('asset'));

      final assetString = asset.toJson();

      expect(assetString, const TypeMatcher<String>());
    });

    test('built_value matcher', () {
      final value = Asset(
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
      );

      expect(value, equalsBuilt(value));
    });

    test('compared value matcher', () {
      final value = Asset(
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
      );

      final otherValue = Asset(
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
      );

      expect(value, otherValue);
    });

    test('reports if not same', () {
      final value = Asset(
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
      );

      final otherValue = value.rebuild(
        (b) => b..sys.version = -1,
      );

      expectMismatch(value, otherValue, '');
    });
  });
}
