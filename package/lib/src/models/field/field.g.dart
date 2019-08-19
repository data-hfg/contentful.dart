// GENERATED CODE - DO NOT MODIFY BY HAND

part of field;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Field> _$fieldSerializer = new _$FieldSerializer();

class _$FieldSerializer implements StructuredSerializer<Field> {
  @override
  final Iterable<Type> types = const [Field, _$Field];
  @override
  final String wireName = 'Field';

  @override
  Iterable<Object> serialize(Serializers serializers, Field object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'disabled',
      serializers.serialize(object.disabled,
          specifiedType: const FullType(bool)),
      'localized',
      serializers.serialize(object.localized,
          specifiedType: const FullType(bool)),
      'required',
      serializers.serialize(object.isRequired,
          specifiedType: const FullType(bool)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(FieldType)),
    ];
    if (object.itemType != null) {
      result
        ..add('itemType')
        ..add(serializers.serialize(object.itemType,
            specifiedType: const FullType(FieldType)));
    }
    return result;
  }

  @override
  Field deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FieldBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'disabled':
          result.disabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'localized':
          result.localized = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'required':
          result.isRequired = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(FieldType)) as FieldType;
          break;
        case 'itemType':
          result.itemType = serializers.deserialize(value,
              specifiedType: const FullType(FieldType)) as FieldType;
          break;
      }
    }

    return result.build();
  }
}

class _$Field extends Field {
  @override
  final String id;
  @override
  final String name;
  @override
  final bool disabled;
  @override
  final bool localized;
  @override
  final bool isRequired;
  @override
  final FieldType type;
  @override
  final FieldType itemType;

  factory _$Field([void Function(FieldBuilder) updates]) =>
      (new FieldBuilder()..update(updates)).build();

  _$Field._(
      {this.id,
      this.name,
      this.disabled,
      this.localized,
      this.isRequired,
      this.type,
      this.itemType})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Field', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Field', 'name');
    }
    if (disabled == null) {
      throw new BuiltValueNullFieldError('Field', 'disabled');
    }
    if (localized == null) {
      throw new BuiltValueNullFieldError('Field', 'localized');
    }
    if (isRequired == null) {
      throw new BuiltValueNullFieldError('Field', 'isRequired');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('Field', 'type');
    }
  }

  @override
  Field rebuild(void Function(FieldBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldBuilder toBuilder() => new FieldBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Field &&
        id == other.id &&
        name == other.name &&
        disabled == other.disabled &&
        localized == other.localized &&
        isRequired == other.isRequired &&
        type == other.type &&
        itemType == other.itemType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                        disabled.hashCode),
                    localized.hashCode),
                isRequired.hashCode),
            type.hashCode),
        itemType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Field')
          ..add('id', id)
          ..add('name', name)
          ..add('disabled', disabled)
          ..add('localized', localized)
          ..add('isRequired', isRequired)
          ..add('type', type)
          ..add('itemType', itemType))
        .toString();
  }
}

class FieldBuilder implements Builder<Field, FieldBuilder> {
  _$Field _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  bool _disabled;
  bool get disabled => _$this._disabled;
  set disabled(bool disabled) => _$this._disabled = disabled;

  bool _localized;
  bool get localized => _$this._localized;
  set localized(bool localized) => _$this._localized = localized;

  bool _isRequired;
  bool get isRequired => _$this._isRequired;
  set isRequired(bool isRequired) => _$this._isRequired = isRequired;

  FieldType _type;
  FieldType get type => _$this._type;
  set type(FieldType type) => _$this._type = type;

  FieldType _itemType;
  FieldType get itemType => _$this._itemType;
  set itemType(FieldType itemType) => _$this._itemType = itemType;

  FieldBuilder();

  FieldBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _disabled = _$v.disabled;
      _localized = _$v.localized;
      _isRequired = _$v.isRequired;
      _type = _$v.type;
      _itemType = _$v.itemType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Field other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Field;
  }

  @override
  void update(void Function(FieldBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Field build() {
    final _$result = _$v ??
        new _$Field._(
            id: id,
            name: name,
            disabled: disabled,
            localized: localized,
            isRequired: isRequired,
            type: type,
            itemType: itemType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
