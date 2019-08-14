import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('Locale Tests', () {
    test('returns Locale from json string', () {
      final locale = Locale.fromJson(loadFixture('tlh_locale'));
      final localeString = locale.toJson();

      expect(localeString, const TypeMatcher<String>());
    });
  });
}
