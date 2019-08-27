import 'package:built_collection/built_collection.dart';
import 'package:built_value_test/matcher.dart';
import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('Space Tests:', () {
    test('returns instance of Space from json', () {
      final space = Space.fromJson(loadFixture('space'));

      expect(space, const TypeMatcher<Space>());
    });

    test('returns json string from Space', () {
      final space = Space.fromJson(loadFixture('space'));

      final spaceString = space.toJson();

      expect(spaceString, const TypeMatcher<String>());
    });

    test('built_value matcher', () {
      final locale = Locale(
        (b) => b
          ..code = 'code'
          ..fallbackCode = 'fallbackCode'
          ..isDefault = true
          ..name = 'name',
      );

      final value = Space(
        (b) => b
          ..name = 'name'
          ..sys = SystemFields(
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
          ).toBuilder()
          ..locales = BuiltList<Locale>.from(
            [locale],
          ).toBuilder(),
      );
      expect(value, equalsBuilt(value));
    });

    test('compared value matcher', () {
      final locale = Locale(
        (b) => b
          ..code = 'code'
          ..fallbackCode = 'fallbackCode'
          ..isDefault = true
          ..name = 'name',
      );

      final value = Space(
        (b) => b
          ..name = 'name'
          ..sys = SystemFields(
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
          ).toBuilder()
          ..locales = BuiltList<Locale>.from(
            [locale],
          ).toBuilder(),
      );

      final otherValue = Space(
        (b) => b
          ..name = 'name'
          ..sys = SystemFields(
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
          ).toBuilder()
          ..locales = BuiltList<Locale>.from(
            [locale],
          ).toBuilder(),
      );

      expect(value, otherValue);
    });

    test('reports if not same', () {
      final locale = Locale(
        (b) => b
          ..code = 'code'
          ..fallbackCode = 'fallbackCode'
          ..isDefault = true
          ..name = 'name',
      );

      final value = Space(
        (b) => b
          ..name = 'name'
          ..sys = SystemFields(
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
          ).toBuilder()
          ..locales = BuiltList<Locale>.from(
            [locale],
          ).toBuilder(),
      );
      final otherValue = value.rebuild((b) => b..name = 'not the name');

      expectMismatch(value, otherValue, '');
    });
  });
}
