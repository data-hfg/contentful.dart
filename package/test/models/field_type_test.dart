import 'package:built_collection/built_collection.dart';
import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

void main() {
  group('FieldType Tests', () {
    test('returns instance of FieldType for field Array', () {
      final fieldTypeArray = FieldType.array;

      expect(fieldTypeArray, const TypeMatcher<FieldType>());
    });

    test('returns instance of FieldType for field Asset', () {
      final fieldTypeArray = FieldType.asset;

      expect(fieldTypeArray, const TypeMatcher<FieldType>());
    });

    test('returns instance of FieldType for field Boolean', () {
      final fieldTypeArray = FieldType.boolean;

      expect(fieldTypeArray, const TypeMatcher<FieldType>());
    });

    test('returns instance of FieldType for field Date', () {
      final fieldTypeArray = FieldType.date;

      expect(fieldTypeArray, const TypeMatcher<FieldType>());
    });

    test('returns instance of FieldType for field Entry', () {
      final fieldTypeArray = FieldType.entry;

      expect(fieldTypeArray, const TypeMatcher<FieldType>());
    });

    test('returns instance of FieldType for field Link', () {
      final fieldTypeArray = FieldType.link;

      expect(fieldTypeArray, const TypeMatcher<FieldType>());
    });

    test('returns instance of FieldType for field Location', () {
      final fieldTypeArray = FieldType.location;

      expect(fieldTypeArray, const TypeMatcher<FieldType>());
    });

    test('returns instance of FieldType for field Number', () {
      final fieldTypeArray = FieldType.number;

      expect(fieldTypeArray, const TypeMatcher<FieldType>());
    });

    test('returns instance of FieldType for field Object', () {
      final fieldTypeArray = FieldType.object;

      expect(fieldTypeArray, const TypeMatcher<FieldType>());
    });

    test('returns instance of FieldType for field Symbol', () {
      final fieldTypeArray = FieldType.symbol;

      expect(fieldTypeArray, const TypeMatcher<FieldType>());
    });

    test('returns instance of FieldType for field Text', () {
      final fieldTypeArray = FieldType.text;

      expect(fieldTypeArray, const TypeMatcher<FieldType>());
    });

    test('returns instance of FieldType for field None', () {
      final fieldTypeArray = FieldType.none;

      expect(fieldTypeArray, const TypeMatcher<FieldType>());
    });
    test('returns instance of FieldType for field RichText', () {
      final fieldTypeArray = FieldType.richText;

      expect(fieldTypeArray, const TypeMatcher<FieldType>());
    });

    test('returns instance of FieldType for field Integer', () {
      final fieldTypeArray = FieldType.integer;

      expect(fieldTypeArray, const TypeMatcher<FieldType>());
    });

    test('returns instance of FieldType for field Integer', () {
      final values = FieldType.values;

      expect(values, const TypeMatcher<BuiltSet<FieldType>>());
    });
  });
}
