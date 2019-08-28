import 'package:built_collection/built_collection.dart';
import 'package:built_value_test/matcher.dart';
import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('ContentTypeResponse Tests:', () {
    test('returns instance of ContentTypeResponse from json', () {
      final contentTypeResponse =
          ContentTypeResponse.fromJson(loadFixture('content_type_response'));

      expect(contentTypeResponse, const TypeMatcher<ContentTypeResponse>());
    });

    test('returns json string from ContentTypeResponse', () {
      final contentTypeResponse =
          ContentTypeResponse.fromJson(loadFixture('content_type_response'));

      final contentTypeResponseString = contentTypeResponse.toJson();

      expect(contentTypeResponseString, const TypeMatcher<String>());
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

      final contentType = ContentType(
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

      final value = ContentTypeResponse(
        (b) => b
          ..limit = 0
          ..skip = 0
          ..total = 100
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
          ..items = BuiltList<ContentType>.from(
            [contentType],
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

      final contentType = ContentType(
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

      final value = ContentTypeResponse(
        (b) => b
          ..limit = 0
          ..skip = 0
          ..total = 100
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
          ..items = BuiltList<ContentType>.from(
            [contentType],
          ).toBuilder(),
      );

      final otherValue = ContentTypeResponse(
        (b) => b
          ..limit = 0
          ..skip = 0
          ..total = 100
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
          ..items = BuiltList<ContentType>.from(
            [contentType],
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

      final contentType = ContentType(
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

      final value = ContentTypeResponse(
        (b) => b
          ..limit = 0
          ..skip = 0
          ..total = 100
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
          ..items = BuiltList<ContentType>.from(
            [contentType],
          ).toBuilder(),
      );

      final otherValue = value.rebuild(
        (b) => b..sys.version = -1,
      );

      expectMismatch(value, otherValue, '');
    });
  });
}
