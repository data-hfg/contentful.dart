import 'package:built_value_test/matcher.dart';
import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('Locale Tests:', () {
    test('returns Locale from json string', () {
      final locale = Locale.fromJson(loadFixture('tlh_locale'));
      final localeString = locale.toJson();

      expect(localeString, const TypeMatcher<String>());
    });

    test('built_value matcher', () {
      final value = Locale(
        (b) => b
          ..code = 'code'
          ..fallbackCode = 'fallbackCode'
          ..isDefault = true
          ..name = 'name',
      );
      expect(value, equalsBuilt(value));
    });

    test('compared value matcher', () {
      final value = Locale(
        (b) => b
          ..code = 'code'
          ..fallbackCode = 'fallbackCode'
          ..isDefault = true
          ..name = 'name',
      );

      final otherValue = Locale(
        (b) => b
          ..code = 'code'
          ..fallbackCode = 'fallbackCode'
          ..isDefault = true
          ..name = 'name',
      );

      expect(value, otherValue);
    });

    test('reports if not same', () {
      final value = Locale(
        (b) => b
          ..code = 'code'
          ..fallbackCode = 'fallbackCode'
          ..isDefault = true
          ..name = 'name',
      );

      final otherValue = value.rebuild((b) => b..name = 'not the name');

      expectMismatch(value, otherValue, '');
    });
  });
}
