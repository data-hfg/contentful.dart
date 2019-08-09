import 'package:contentful_dart/contentful.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('Locale Tests\n', () {
    test('returns Locale from json string', () {
      final locale = Locale.fromJson(loadFixture('tlh_locale'));
      final localeString = locale.toJson();

      expect(localeString, const TypeMatcher<String>());
    });
  });
}
