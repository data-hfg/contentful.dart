import 'package:built_collection/built_collection.dart';
import 'package:built_value_test/matcher.dart';
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

    test('built_value matcher', () {
      final locale = Locale(
        (b) => b
          ..code = 'code'
          ..fallbackCode = 'fallbackCode'
          ..isDefault = true
          ..name = 'name',
      );

      final value = AllLocales(
        (b) => b
          ..total = 100
          ..skip = 0
          ..limit = 10
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
          ..items = BuiltList<Locale>.from(
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

      final value = AllLocales(
        (b) => b
          ..total = 100
          ..skip = 0
          ..limit = 10
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
          ..items = BuiltList<Locale>.from(
            [locale],
          ).toBuilder(),
      );

      final otherValue = AllLocales(
        (b) => b
          ..total = 100
          ..skip = 0
          ..limit = 10
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
          ..items = BuiltList<Locale>.from(
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

      final value = AllLocales(
        (b) => b
          ..total = 100
          ..skip = 0
          ..limit = 10
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
          ..items = BuiltList<Locale>.from(
            [locale],
          ).toBuilder(),
      );

      final otherValue = value.rebuild((b) => b..skip = -100);

      expectMismatch(value, otherValue, '');
    });
  });
}
