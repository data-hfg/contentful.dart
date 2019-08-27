import 'package:built_value_test/matcher.dart';
import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('SystemFields Tests:', () {
    test('returns instance of SystemFields from json', () {
      final sys = SystemFields.fromJson(loadFixture('sys'));

      expect(sys, const TypeMatcher<SystemFields>());
    });

    test('returns json string from SystemFields', () {
      final sys = SystemFields.fromJson(loadFixture('sys'));

      final sysString = sys.toJson();

      expect(sysString, const TypeMatcher<String>());
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
  });
}
