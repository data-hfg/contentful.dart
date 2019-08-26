import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('AllLocales Tests:', () {
    test('returns instance of AllLocales from json', () {
      final allLocales = AllLocales.fromJson(loadFixture('all_locales'));

      expect(allLocales, const TypeMatcher<AllLocales>());
    });

    test('returns json string from AllLocales', () {
      final allLocales = AllLocales.fromJson(loadFixture('all_locales'));

      final allLocalesString = allLocales.toJson();

      expect(allLocalesString, const TypeMatcher<String>());
    });
  });
}
