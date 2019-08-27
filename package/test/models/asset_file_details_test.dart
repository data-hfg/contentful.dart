import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('AssetFileDetails Tests:', () {
    test('returns instance of AssetFileDetails from json', () {
      final assetFileDetails =
          AssetFileDetails.fromJson(loadFixture('asset_file_details'));

      expect(assetFileDetails, const TypeMatcher<AssetFileDetails>());
    });

    test('returns json string from AssetFileDetails', () {
      final assetFileDetails =
          AssetFileDetails.fromJson(loadFixture('asset_file_details'));

      final assetFileDetailsString = assetFileDetails.toJson();

      expect(assetFileDetailsString, const TypeMatcher<String>());
    });
  });
}
