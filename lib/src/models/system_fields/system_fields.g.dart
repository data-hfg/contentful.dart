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
    final result = <Object>[];
    if (object.space != null) {
      result
        ..add('space')
        ..add(serializers.serialize(object.space,
            specifiedType: const FullType(Space)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updatedAt')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.locale != null) {
      result
        ..add('locale')
        ..add(serializers.serialize(object.locale,
            specifiedType: const FullType(String)));
    }
    if (object.contentTypeId != null) {
      result
        ..add('contentTypeId')
        ..add(serializers.serialize(object.contentTypeId,
            specifiedType: const FullType(String)));
    }
    if (object.revision != null) {
      result
        ..add('revision')
        ..add(serializers.serialize(object.revision,
            specifiedType: const FullType(int)));
    }
    if (object.version != null) {
      result
        ..add('version')
        ..add(serializers.serialize(object.version,
            specifiedType: const FullType(int)));
    }
    if (object.contentType != null) {
      result
        ..add('contentType')
        ..add(serializers.serialize(object.contentType,
            specifiedType: const FullType(String)));
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
        case 'space':
          result.space.replace(serializers.deserialize(value,
              specifiedType: const FullType(Space)) as Space);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'locale':
          result.locale = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contentTypeId':
          result.contentTypeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'revision':
          result.revision = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'contentType':
          result.contentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SystemFields extends SystemFields {
  @override
  final Space space;
  @override
  final String id;
  @override
  final String type;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String locale;
  @override
  final String contentTypeId;
  @override
  final int revision;
  @override
  final int version;
  @override
  final String contentType;

  factory _$SystemFields([void Function(SystemFieldsBuilder) updates]) =>
      (new SystemFieldsBuilder()..update(updates)).build();

  _$SystemFields._(
      {this.space,
      this.id,
      this.type,
      this.createdAt,
      this.updatedAt,
      this.locale,
      this.contentTypeId,
      this.revision,
      this.version,
      this.contentType})
      : super._();

  @override
  SystemFields rebuild(void Function(SystemFieldsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemFieldsBuilder toBuilder() => new SystemFieldsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemFields &&
        space == other.space &&
        id == other.id &&
        type == other.type &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        locale == other.locale &&
        contentTypeId == other.contentTypeId &&
        revision == other.revision &&
        version == other.version &&
        contentType == other.contentType;
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
                                $jc($jc($jc(0, space.hashCode), id.hashCode),
                                    type.hashCode),
                                createdAt.hashCode),
                            updatedAt.hashCode),
                        locale.hashCode),
                    contentTypeId.hashCode),
                revision.hashCode),
            version.hashCode),
        contentType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SystemFields')
          ..add('space', space)
          ..add('id', id)
          ..add('type', type)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('locale', locale)
          ..add('contentTypeId', contentTypeId)
          ..add('revision', revision)
          ..add('version', version)
          ..add('contentType', contentType))
        .toString();
  }
}

class SystemFieldsBuilder
    implements Builder<SystemFields, SystemFieldsBuilder> {
  _$SystemFields _$v;

  SpaceBuilder _space;
  SpaceBuilder get space => _$this._space ??= new SpaceBuilder();
  set space(SpaceBuilder space) => _$this._space = space;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  String _locale;
  String get locale => _$this._locale;
  set locale(String locale) => _$this._locale = locale;

  String _contentTypeId;
  String get contentTypeId => _$this._contentTypeId;
  set contentTypeId(String contentTypeId) =>
      _$this._contentTypeId = contentTypeId;

  int _revision;
  int get revision => _$this._revision;
  set revision(int revision) => _$this._revision = revision;

  int _version;
  int get version => _$this._version;
  set version(int version) => _$this._version = version;

  String _contentType;
  String get contentType => _$this._contentType;
  set contentType(String contentType) => _$this._contentType = contentType;

  SystemFieldsBuilder();

  SystemFieldsBuilder get _$this {
    if (_$v != null) {
      _space = _$v.space?.toBuilder();
      _id = _$v.id;
      _type = _$v.type;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _locale = _$v.locale;
      _contentTypeId = _$v.contentTypeId;
      _revision = _$v.revision;
      _version = _$v.version;
      _contentType = _$v.contentType;
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
              space: _space?.build(),
              id: id,
              type: type,
              createdAt: createdAt,
              updatedAt: updatedAt,
              locale: locale,
              contentTypeId: contentTypeId,
              revision: revision,
              version: version,
              contentType: contentType);
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
