import 'package:built_collection/built_collection.dart';
import 'package:built_value_test/matcher.dart';
import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('ContentType Tests:', () {
    test('returns instance of ContentType from json', () {
      final contentType = ContentType.fromJson(loadFixture('content_type'));

      expect(contentType, const TypeMatcher<ContentType>());
    });

    test('returns json string from ContentType', () {
      final contentType = ContentType.fromJson(loadFixture('content_type'));

      final contentTypeString = contentType.toJson();

      expect(contentTypeString, const TypeMatcher<String>());
    });

    test('returns type is equals to ContentType', () {
      final contentType = ContentType.fromJson(loadFixture('content_type'));

      expect(contentType.type, equals('ContentType'));
    });

    test('returns type is equals to ContentType', () {
      final contentType = ContentType.fromJson(loadFixture('content_type'));

      expect(contentType.contentId, equals('person'));
    });

    test('built_value matcher', () {
      final field = Field(
        (b) => b
          ..disabled = true
          ..id = 'id'
          ..isRequired = true
          ..itemType = FieldType.boolean
          ..localized = true
          ..name = 'name'
          ..type = FieldType.asset,
      );

      final value = ContentType(
        (b) => b
          ..description = 'description'
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
          ..fields = BuiltList<Field>.from(
            [field],
          ).toBuilder(),
      );

      expect(value, equalsBuilt(value));
    });

    test('compared value matcher', () {
      final field = Field(
        (b) => b
          ..disabled = true
          ..id = 'id'
          ..isRequired = true
          ..itemType = FieldType.boolean
          ..localized = true
          ..name = 'name'
          ..type = FieldType.asset,
      );

      final value = ContentType(
        (b) => b
          ..description = 'description'
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
          ..fields = BuiltList<Field>.from(
            [field],
          ).toBuilder(),
      );

      final otherValue = ContentType(
        (b) => b
          ..description = 'description'
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
          ..fields = BuiltList<Field>.from(
            [field],
          ).toBuilder(),
      );

      expect(value, otherValue);
    });

    test('reports if not same', () {
      final field = Field(
        (b) => b
          ..disabled = true
          ..id = 'id'
          ..isRequired = true
          ..itemType = FieldType.boolean
          ..localized = true
          ..name = 'name'
          ..type = FieldType.asset,
      );

      final value = ContentType(
        (b) => b
          ..description = 'description'
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
          ..fields = BuiltList<Field>.from(
            [field],
          ).toBuilder(),
      );

      final otherValue = value.rebuild(
        (b) => b..sys.version = -1,
      );

      expectMismatch(value, otherValue, '');
    });
  });
}
