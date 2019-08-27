import 'package:built_value_test/matcher.dart';
import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('Field Tests:', () {
    test('returns instance of Field from json', () {
      final field = Field.fromJson(loadFixture('field'));

      expect(field, const TypeMatcher<Field>());
    });

    test('returns json string from Field', () {
      final field = Field.fromJson(loadFixture('field'));

      final fieldString = field.toJson();

      expect(fieldString, const TypeMatcher<String>());
    });

    test('built_value matcher', () {
      final value = Field(
        (b) => b
          ..disabled = true
          ..id = 'id'
          ..isRequired = true
          ..itemType = FieldType.boolean
          ..localized = true
          ..name = 'name'
          ..type = FieldType.asset,
      );
      expect(value, equalsBuilt(value));
    });

    test('compared value matcher', () {
      final value = Field(
        (b) => b
          ..disabled = true
          ..id = 'id'
          ..isRequired = true
          ..itemType = FieldType.boolean
          ..localized = true
          ..name = 'name'
          ..type = FieldType.asset,
      );

      final otherValue = Field(
        (b) => b
          ..disabled = true
          ..id = 'id'
          ..isRequired = true
          ..itemType = FieldType.boolean
          ..localized = true
          ..name = 'name'
          ..type = FieldType.asset,
      );

      expect(value, otherValue);
    });

    test('reports if not same', () {
      final value = Field(
        (b) => b
          ..disabled = true
          ..id = 'id'
          ..isRequired = true
          ..itemType = FieldType.boolean
          ..localized = true
          ..name = 'name'
          ..type = FieldType.asset,
      );

      final otherValue = value.rebuild((b) => b..name = 'not the name');

      expectMismatch(value, otherValue, '');
    });
  });
}
