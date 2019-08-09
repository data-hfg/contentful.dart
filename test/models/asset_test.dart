import 'package:contentful_dart/contentful.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('Asset Tests', () {
    test('returns Asset from json string', () {
      final asset = Asset.fromJson(loadFixture('asset'));
      final assettring = asset.toJson();

      expect(assettring, const TypeMatcher<String>());
    });
  });
}
