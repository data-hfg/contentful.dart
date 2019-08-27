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
      final value = SystemFields(
        (b) => b
          ..contentType = 'contentType'
          ..contentTypeId = 'contentTypeId'
          ..createdAt = 'createdAt'
          ..createdBy = 'createdBy'
          ..firstPublishedAt = 'firstPublishedAt'
          ..id = 'id'
          ..locale = 'locale'
          ..publishedAt = 'publishedAt'
          ..publishedBy = 'publishedBy'
          ..publishedCounter = 1
          ..publishedVersion = 2
          ..revision = 3
          ..type = 'type'
          ..updatedAt = 'updatedAt'
          ..updatedBy = 'updatedBy'
          ..version = 1,
      );
      expect(value, equalsBuilt(value));
    });

    test('compared value matcher', () {
      final value = SystemFields(
        (b) => b
          ..contentType = 'contentType'
          ..contentTypeId = 'contentTypeId'
          ..createdAt = 'createdAt'
          ..createdBy = 'createdBy'
          ..firstPublishedAt = 'firstPublishedAt'
          ..id = 'id'
          ..locale = 'locale'
          ..publishedAt = 'publishedAt'
          ..publishedBy = 'publishedBy'
          ..publishedCounter = 1
          ..publishedVersion = 2
          ..revision = 3
          ..type = 'type'
          ..updatedAt = 'updatedAt'
          ..updatedBy = 'updatedBy'
          ..version = 1,
      );

      final otherValue = SystemFields(
        (b) => b
          ..contentType = 'contentType'
          ..contentTypeId = 'contentTypeId'
          ..createdAt = 'createdAt'
          ..createdBy = 'createdBy'
          ..firstPublishedAt = 'firstPublishedAt'
          ..id = 'id'
          ..locale = 'locale'
          ..publishedAt = 'publishedAt'
          ..publishedBy = 'publishedBy'
          ..publishedCounter = 1
          ..publishedVersion = 2
          ..revision = 3
          ..type = 'type'
          ..updatedAt = 'updatedAt'
          ..updatedBy = 'updatedBy'
          ..version = 1,
      );
      expect(value, otherValue);
    });

    test('reports if not same', () {
      final value = SystemFields(
        (b) => b
          ..contentType = 'contentType'
          ..contentTypeId = 'contentTypeId'
          ..createdAt = 'createdAt'
          ..createdBy = 'createdBy'
          ..firstPublishedAt = 'firstPublishedAt'
          ..id = 'id'
          ..locale = 'locale'
          ..publishedAt = 'publishedAt'
          ..publishedBy = 'publishedBy'
          ..publishedCounter = 1
          ..publishedVersion = 2
          ..revision = 3
          ..type = 'type'
          ..updatedAt = 'updatedAt'
          ..updatedBy = 'updatedBy'
          ..version = 1,
      );

      final otherValue = value.rebuild((b) => b..locale = 'not the locale');

      expectMismatch(value, otherValue, '');
    });
  });
}
