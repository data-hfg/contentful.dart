import 'package:built_value_test/matcher.dart';
import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('AssetFileDetails Tests:', () {
    test('returns instance of AssetFile from json', () {
      final assetFile = AssetFile.fromJson(loadFixture('asset_file'));

      expect(assetFile, const TypeMatcher<AssetFile>());
    });

    test('returns json string from AssetFile', () {
      final assetFile = AssetFile.fromJson(loadFixture('asset_file'));

      final assetFileString = assetFile.toJson();

      expect(assetFileString, const TypeMatcher<String>());
    });

    test('built_value matcher', () {
      final value = AssetFile(
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
      );

      expect(value, equalsBuilt(value));
    });

    test('compared value matcher', () {
      final value = AssetFile(
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
      );

      final otherValue = AssetFile(
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
      );

      expect(value, otherValue);
    });

    test('reports if not same', () {
      final value = AssetFile(
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
      );

      final otherValue = value.rebuild(
        (b) => b..contentType = 'not a contentType',
      );

      expectMismatch(value, otherValue, '');
    });
  });
}
