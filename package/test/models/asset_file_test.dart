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
  });
}
