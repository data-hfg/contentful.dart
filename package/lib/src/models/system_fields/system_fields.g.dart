// GENERATED CODE - DO NOT MODIFY BY HAND

part of system_fields;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SystemFields> _$systemFieldsSerializer =
    new _$SystemFieldsSerializer();

class _$SystemFieldsSerializer implements StructuredSerializer<SystemFields> {
  @override
  final Iterable<Type> types = const [SystemFields, _$SystemFields];
  @override
  final String wireName = 'SystemFields';

  @override
  Iterable<Object> serialize(Serializers serializers, SystemFields object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];
    if (object.contentType != null) {
      result
        ..add('contentType')
        ..add(serializers.serialize(object.contentType,
            specifiedType: const FullType(String)));
    }
    if (object.contentTypeId != null) {
      result
        ..add('contentTypeId')
        ..add(serializers.serialize(object.contentTypeId,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(String)));
    }
    if (object.createdBy != null) {
      result
        ..add('createdBy')
        ..add(serializers.serialize(object.createdBy,
            specifiedType: const FullType(String)));
    }
    if (object.firstPublishedAt != null) {
      result
        ..add('firstPublishedAt')
        ..add(serializers.serialize(object.firstPublishedAt,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.locale != null) {
      result
        ..add('locale')
        ..add(serializers.serialize(object.locale,
            specifiedType: const FullType(String)));
    }
    if (object.publishedAt != null) {
      result
        ..add('publishedAt')
        ..add(serializers.serialize(object.publishedAt,
            specifiedType: const FullType(String)));
    }
    if (object.publishedBy != null) {
      result
        ..add('publishedBy')
        ..add(serializers.serialize(object.publishedBy,
            specifiedType: const FullType(String)));
    }
    if (object.publishedCounter != null) {
      result
        ..add('publishedCounter')
        ..add(serializers.serialize(object.publishedCounter,
            specifiedType: const FullType(int)));
    }
    if (object.publishedVersion != null) {
      result
        ..add('publishedVersion')
        ..add(serializers.serialize(object.publishedVersion,
            specifiedType: const FullType(int)));
    }
    if (object.revision != null) {
      result
        ..add('revision')
        ..add(serializers.serialize(object.revision,
            specifiedType: const FullType(int)));
    }
    if (object.space != null) {
      result
        ..add('space')
        ..add(serializers.serialize(object.space,
            specifiedType: const FullType(Space)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updatedAt')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(String)));
    }
    if (object.updatedBy != null) {
      result
        ..add('updatedBy')
        ..add(serializers.serialize(object.updatedBy,
            specifiedType: const FullType(String)));
    }
    if (object.version != null) {
      result
        ..add('version')
        ..add(serializers.serialize(object.version,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  SystemFields deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SystemFieldsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'contentType':
          result.contentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contentTypeId':
          result.contentTypeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdBy':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'firstPublishedAt':
          result.firstPublishedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'locale':
          result.locale = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'publishedAt':
          result.publishedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'publishedBy':
          result.publishedBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'publishedCounter':
          result.publishedCounter = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'publishedVersion':
          result.publishedVersion = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'revision':
          result.revision = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'space':
          result.space.replace(serializers.deserialize(value,
              specifiedType: const FullType(Space)) as Space);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updatedBy':
          result.updatedBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$SystemFields extends SystemFields {
  @override
  final String contentType;
  @override
  final String contentTypeId;
  @override
  final String createdAt;
  @override
  final String createdBy;
  @override
  final String firstPublishedAt;
  @override
  final String id;
  @override
  final String locale;
  @override
  final String publishedAt;
  @override
  final String publishedBy;
  @override
  final int publishedCounter;
  @override
  final int publishedVersion;
  @override
  final int revision;
  @override
  final Space space;
  @override
  final String type;
  @override
  final String updatedAt;
  @override
  final String updatedBy;
  @override
  final int version;

  factory _$SystemFields([void Function(SystemFieldsBuilder) updates]) =>
      (new SystemFieldsBuilder()..update(updates)).build();

  _$SystemFields._(
      {this.contentType,
      this.contentTypeId,
      this.createdAt,
      this.createdBy,
      this.firstPublishedAt,
      this.id,
      this.locale,
      this.publishedAt,
      this.publishedBy,
      this.publishedCounter,
      this.publishedVersion,
      this.revision,
      this.space,
      this.type,
      this.updatedAt,
      this.updatedBy,
      this.version})
      : super._() {
    if (type == null) {
      throw new BuiltValueNullFieldError('SystemFields', 'type');
    }
  }

  @override
  SystemFields rebuild(void Function(SystemFieldsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemFieldsBuilder toBuilder() => new SystemFieldsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemFields &&
        contentType == other.contentType &&
        contentTypeId == other.contentTypeId &&
        createdAt == other.createdAt &&
        createdBy == other.createdBy &&
        firstPublishedAt == other.firstPublishedAt &&
        id == other.id &&
        locale == other.locale &&
        publishedAt == other.publishedAt &&
        publishedBy == other.publishedBy &&
        publishedCounter == other.publishedCounter &&
        publishedVersion == other.publishedVersion &&
        revision == other.revision &&
        space == other.space &&
        type == other.type &&
        updatedAt == other.updatedAt &&
        updatedBy == other.updatedBy &&
        version == other.version;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        contentType
                                                                            .hashCode),
                                                                    contentTypeId
                                                                        .hashCode),
                                                                createdAt
                                                                    .hashCode),
                                                            createdBy.hashCode),
                                                        firstPublishedAt
                                                            .hashCode),
                                                    id.hashCode),
                                                locale.hashCode),
                                            publishedAt.hashCode),
                                        publishedBy.hashCode),
                                    publishedCounter.hashCode),
                                publishedVersion.hashCode),
                            revision.hashCode),
                        space.hashCode),
                    type.hashCode),
                updatedAt.hashCode),
            updatedBy.hashCode),
        version.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SystemFields')
          ..add('contentType', contentType)
          ..add('contentTypeId', contentTypeId)
          ..add('createdAt', createdAt)
          ..add('createdBy', createdBy)
          ..add('firstPublishedAt', firstPublishedAt)
          ..add('id', id)
          ..add('locale', locale)
          ..add('publishedAt', publishedAt)
          ..add('publishedBy', publishedBy)
          ..add('publishedCounter', publishedCounter)
          ..add('publishedVersion', publishedVersion)
          ..add('revision', revision)
          ..add('space', space)
          ..add('type', type)
          ..add('updatedAt', updatedAt)
          ..add('updatedBy', updatedBy)
          ..add('version', version))
        .toString();
  }
}

class SystemFieldsBuilder
    implements Builder<SystemFields, SystemFieldsBuilder> {
  _$SystemFields _$v;

  String _contentType;
  String get contentType => _$this._contentType;
  set contentType(String contentType) => _$this._contentType = contentType;

  String _contentTypeId;
  String get contentTypeId => _$this._contentTypeId;
  set contentTypeId(String contentTypeId) =>
      _$this._contentTypeId = contentTypeId;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _createdBy;
  String get createdBy => _$this._createdBy;
  set createdBy(String createdBy) => _$this._createdBy = createdBy;

  String _firstPublishedAt;
  String get firstPublishedAt => _$this._firstPublishedAt;
  set firstPublishedAt(String firstPublishedAt) =>
      _$this._firstPublishedAt = firstPublishedAt;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _locale;
  String get locale => _$this._locale;
  set locale(String locale) => _$this._locale = locale;

  String _publishedAt;
  String get publishedAt => _$this._publishedAt;
  set publishedAt(String publishedAt) => _$this._publishedAt = publishedAt;

  String _publishedBy;
  String get publishedBy => _$this._publishedBy;
  set publishedBy(String publishedBy) => _$this._publishedBy = publishedBy;

  int _publishedCounter;
  int get publishedCounter => _$this._publishedCounter;
  set publishedCounter(int publishedCounter) =>
      _$this._publishedCounter = publishedCounter;

  int _publishedVersion;
  int get publishedVersion => _$this._publishedVersion;
  set publishedVersion(int publishedVersion) =>
      _$this._publishedVersion = publishedVersion;

  int _revision;
  int get revision => _$this._revision;
  set revision(int revision) => _$this._revision = revision;

  SpaceBuilder _space;
  SpaceBuilder get space => _$this._space ??= new SpaceBuilder();
  set space(SpaceBuilder space) => _$this._space = space;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  String _updatedBy;
  String get updatedBy => _$this._updatedBy;
  set updatedBy(String updatedBy) => _$this._updatedBy = updatedBy;

  int _version;
  int get version => _$this._version;
  set version(int version) => _$this._version = version;

  SystemFieldsBuilder();

  SystemFieldsBuilder get _$this {
    if (_$v != null) {
      _contentType = _$v.contentType;
      _contentTypeId = _$v.contentTypeId;
      _createdAt = _$v.createdAt;
      _createdBy = _$v.createdBy;
      _firstPublishedAt = _$v.firstPublishedAt;
      _id = _$v.id;
      _locale = _$v.locale;
      _publishedAt = _$v.publishedAt;
      _publishedBy = _$v.publishedBy;
      _publishedCounter = _$v.publishedCounter;
      _publishedVersion = _$v.publishedVersion;
      _revision = _$v.revision;
      _space = _$v.space?.toBuilder();
      _type = _$v.type;
      _updatedAt = _$v.updatedAt;
      _updatedBy = _$v.updatedBy;
      _version = _$v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemFields other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SystemFields;
  }

  @override
  void update(void Function(SystemFieldsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SystemFields build() {
    _$SystemFields _$result;
    try {
      _$result = _$v ??
          new _$SystemFields._(
              contentType: contentType,
              contentTypeId: contentTypeId,
              createdAt: createdAt,
              createdBy: createdBy,
              firstPublishedAt: firstPublishedAt,
              id: id,
              locale: locale,
              publishedAt: publishedAt,
              publishedBy: publishedBy,
              publishedCounter: publishedCounter,
              publishedVersion: publishedVersion,
              revision: revision,
              space: _space?.build(),
              type: type,
              updatedAt: updatedAt,
              updatedBy: updatedBy,
              version: version);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'space';
        _space?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SystemFields', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
