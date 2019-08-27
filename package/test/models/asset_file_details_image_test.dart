import 'package:built_value_test/matcher.dart';
import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('AssetFileDetailsImage Tests:', () {
    test('returns instance of AssetFileDetailsImage from json', () {
      final assetFileDetailsImage = AssetFileDetailsImage.fromJson(
          loadFixture('asset_file_details_image'));

      expect(assetFileDetailsImage, const TypeMatcher<AssetFileDetailsImage>());
    });

    test('returns json string from AssetFileDetailsImage', () {
      final assetFileDetailsImage = AssetFileDetailsImage.fromJson(
          loadFixture('asset_file_details_image'));

      final assetFileDetailsImageString = assetFileDetailsImage.toJson();

      expect(assetFileDetailsImageString, const TypeMatcher<String>());
    });

    test('built_value matcher', () {
      final value = AssetFileDetailsImage(
        (b) => b
          ..height = 100
          ..width = 200,
      );
      expect(value, equalsBuilt(value));
    });

    test('compared value matcher', () {
      final value = AssetFileDetailsImage(
        (b) => b
          ..height = 100
          ..width = 200,
      );

      final otherValue = AssetFileDetailsImage(
        (b) => b
          ..height = 100
          ..width = 200,
      );

      expect(value, otherValue);
    });

    test('reports if not same', () {
      final value = AssetFileDetailsImage(
        (b) => b
          ..height = 100
          ..width = 200,
      );

      final otherValue = value.rebuild((b) => b..height = 198765);

      expectMismatch(value, otherValue, '');
    });
  });
}
