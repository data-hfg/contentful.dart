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
  });
}
