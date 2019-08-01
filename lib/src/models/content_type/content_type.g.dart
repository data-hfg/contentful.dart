// GENERATED CODE - DO NOT MODIFY BY HAND

part of content_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContentType> _$contentTypeSerializer = new _$ContentTypeSerializer();

class _$ContentTypeSerializer implements StructuredSerializer<ContentType> {
  @override
  final Iterable<Type> types = const [ContentType, _$ContentType];
  @override
  final String wireName = 'ContentType';

  @override
  Iterable<Object> serialize(Serializers serializers, ContentType object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sys',
      serializers.serialize(object.sys, specifiedType: const FullType(Sys)),
      'fields',
      serializers.serialize(object.fields,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Field)])),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ContentType deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContentTypeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sys':
          result.sys.replace(serializers.deserialize(value,
              specifiedType: const FullType(Sys)) as Sys);
          break;
        case 'fields':
          result.fields.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Field)]))
              as BuiltList<dynamic>);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ContentType extends ContentType {
  @override
  final Sys sys;
  @override
  final BuiltList<Field> fields;
  @override
  final String name;
  @override
  final String description;
  String __type;

  factory _$ContentType([void Function(ContentTypeBuilder) updates]) =>
      (new ContentTypeBuilder()..update(updates)).build();

  _$ContentType._({this.sys, this.fields, this.name, this.description})
      : super._() {
    if (sys == null) {
      throw new BuiltValueNullFieldError('ContentType', 'sys');
    }
    if (fields == null) {
      throw new BuiltValueNullFieldError('ContentType', 'fields');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('ContentType', 'name');
    }
  }

  @override
  String get type => __type ??= super.type;

  @override
  ContentType rebuild(void Function(ContentTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContentTypeBuilder toBuilder() => new ContentTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContentType &&
        sys == other.sys &&
        fields == other.fields &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, sys.hashCode), fields.hashCode), name.hashCode),
        description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContentType')
          ..add('sys', sys)
          ..add('fields', fields)
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class ContentTypeBuilder implements Builder<ContentType, ContentTypeBuilder> {
  _$ContentType _$v;

  SysBuilder _sys;
  SysBuilder get sys => _$this._sys ??= new SysBuilder();
  set sys(SysBuilder sys) => _$this._sys = sys;

  ListBuilder<Field> _fields;
  ListBuilder<Field> get fields => _$this._fields ??= new ListBuilder<Field>();
  set fields(ListBuilder<Field> fields) => _$this._fields = fields;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ContentTypeBuilder();

  ContentTypeBuilder get _$this {
    if (_$v != null) {
      _sys = _$v.sys?.toBuilder();
      _fields = _$v.fields?.toBuilder();
      _name = _$v.name;
      _description = _$v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContentType other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContentType;
  }

  @override
  void update(void Function(ContentTypeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContentType build() {
    _$ContentType _$result;
    try {
      _$result = _$v ??
          new _$ContentType._(
              sys: sys.build(),
              fields: fields.build(),
              name: name,
              description: description);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sys';
        sys.build();
        _$failedField = 'fields';
        fields.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ContentType', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
