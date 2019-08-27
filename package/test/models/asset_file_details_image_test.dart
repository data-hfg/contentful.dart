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
  });
}
