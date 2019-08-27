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
  });
}
