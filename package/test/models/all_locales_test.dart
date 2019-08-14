import 'package:contentful_dart/contentful.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('AllLocales Tests', () {
    test('returns AllLocales from json string', () {
      final allLocales = AllLocales.fromJson(loadFixture('all_locales'));
      final allLocalesString = allLocales.toJson();

      expect(allLocalesString, const TypeMatcher<String>());
    });
  });
}
