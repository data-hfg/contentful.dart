import 'package:built_value_test/matcher.dart';
import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('AssetFields Tests:', () {
    test('returns instance of AssetFields from json', () {
      final assetFields = AssetFields.fromJson(loadFixture('asset_fields'));

      expect(assetFields, const TypeMatcher<AssetFields>());
    });

    test('returns json string from AssetFields', () {
      final assetFields = AssetFields.fromJson(loadFixture('asset_fields'));

      final assetFieldsString = assetFields.toJson();

      expect(assetFieldsString, const TypeMatcher<String>());
    });

    test('built_value matcher', () {
      final value = AssetFields(
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
      );

      expect(value, equalsBuilt(value));
    });

    test('compared value matcher', () {
      final value = AssetFields(
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
      );

      final otherValue = AssetFields(
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
      );

      expect(value, otherValue);
    });

    test('reports if not same', () {
      final value = AssetFields(
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
      );

      final otherValue = value.rebuild(
        (b) => b..title = 'not a title',
      );

      expectMismatch(value, otherValue, '');
    });
  });
}
