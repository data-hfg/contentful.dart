// GENERATED CODE - DO NOT MODIFY BY HAND

part of common_resource;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommonResource> _$commonResourceSerializer =
    new _$CommonResourceSerializer();

class _$CommonResourceSerializer
    implements StructuredSerializer<CommonResource> {
  @override
  final Iterable<Type> types = const [CommonResource, _$CommonResource];
  @override
  final String wireName = 'CommonResource';

  @override
  Iterable<Object> serialize(Serializers serializers, CommonResource object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'space',
      serializers.serialize(object.space,
          specifiedType: const FullType(String)),
      'contentType',
      serializers.serialize(object.contentType,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CommonResource deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommonResourceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'space':
          result.space = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$CommonResource extends CommonResource {
  @override
  final String type;
  @override
  final String id;
  @override
  final String space;
  @override
  final String contentType;

  factory _$CommonResource([void Function(CommonResourceBuilder) updates]) =>
      (new CommonResourceBuilder()..update(updates)).build();

  _$CommonResource._({this.type, this.id, this.space, this.contentType})
      : super._() {
    if (type == null) {
      throw new BuiltValueNullFieldError('CommonResource', 'type');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('CommonResource', 'id');
    }
    if (space == null) {
      throw new BuiltValueNullFieldError('CommonResource', 'space');
    }
    if (contentType == null) {
      throw new BuiltValueNullFieldError('CommonResource', 'contentType');
    }
  }

  @override
  CommonResource rebuild(void Function(CommonResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommonResourceBuilder toBuilder() =>
      new CommonResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommonResource &&
        type == other.type &&
        id == other.id &&
        space == other.space &&
        contentType == other.contentType;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, type.hashCode), id.hashCode), space.hashCode),
        contentType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommonResource')
          ..add('type', type)
          ..add('id', id)
          ..add('space', space)
          ..add('contentType', contentType))
        .toString();
  }
}

class CommonResourceBuilder
    implements Builder<CommonResource, CommonResourceBuilder> {
  _$CommonResource _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _space;
  String get space => _$this._space;
  set space(String space) => _$this._space = space;

  String _contentType;
  String get contentType => _$this._contentType;
  set contentType(String contentType) => _$this._contentType = contentType;

  CommonResourceBuilder();

  CommonResourceBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _id = _$v.id;
      _space = _$v.space;
      _contentType = _$v.contentType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommonResource other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommonResource;
  }

  @override
  void update(void Function(CommonResourceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommonResource build() {
    final _$result = _$v ??
        new _$CommonResource._(
            type: type, id: id, space: space, contentType: contentType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
