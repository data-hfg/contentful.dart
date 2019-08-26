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
  });
}
