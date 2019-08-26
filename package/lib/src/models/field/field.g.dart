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
      'disabled',
      serializers.serialize(object.disabled,
          specifiedType: const FullType(bool)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'required',
      serializers.serialize(object.isRequired,
          specifiedType: const FullType(bool)),
      'localized',
      serializers.serialize(object.localized,
          specifiedType: const FullType(bool)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
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
        case 'disabled':
          result.disabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'required':
          result.isRequired = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'itemType':
          result.itemType = serializers.deserialize(value,
              specifiedType: const FullType(FieldType)) as FieldType;
          break;
        case 'localized':
          result.localized = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(FieldType)) as FieldType;
          break;
      }
    }

    return result.build();
  }
}

class _$Field extends Field {
  @override
  final bool disabled;
  @override
  final String id;
  @override
  final bool isRequired;
  @override
  final FieldType itemType;
  @override
  final bool localized;
  @override
  final String name;
  @override
  final FieldType type;

  factory _$Field([void Function(FieldBuilder) updates]) =>
      (new FieldBuilder()..update(updates)).build();

  _$Field._(
      {this.disabled,
      this.id,
      this.isRequired,
      this.itemType,
      this.localized,
      this.name,
      this.type})
      : super._() {
    if (disabled == null) {
      throw new BuiltValueNullFieldError('Field', 'disabled');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('Field', 'id');
    }
    if (isRequired == null) {
      throw new BuiltValueNullFieldError('Field', 'isRequired');
    }
    if (localized == null) {
      throw new BuiltValueNullFieldError('Field', 'localized');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Field', 'name');
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
        disabled == other.disabled &&
        id == other.id &&
        isRequired == other.isRequired &&
        itemType == other.itemType &&
        localized == other.localized &&
        name == other.name &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, disabled.hashCode), id.hashCode),
                        isRequired.hashCode),
                    itemType.hashCode),
                localized.hashCode),
            name.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Field')
          ..add('disabled', disabled)
          ..add('id', id)
          ..add('isRequired', isRequired)
          ..add('itemType', itemType)
          ..add('localized', localized)
          ..add('name', name)
          ..add('type', type))
        .toString();
  }
}

class FieldBuilder implements Builder<Field, FieldBuilder> {
  _$Field _$v;

  bool _disabled;
  bool get disabled => _$this._disabled;
  set disabled(bool disabled) => _$this._disabled = disabled;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  bool _isRequired;
  bool get isRequired => _$this._isRequired;
  set isRequired(bool isRequired) => _$this._isRequired = isRequired;

  FieldType _itemType;
  FieldType get itemType => _$this._itemType;
  set itemType(FieldType itemType) => _$this._itemType = itemType;

  bool _localized;
  bool get localized => _$this._localized;
  set localized(bool localized) => _$this._localized = localized;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  FieldType _type;
  FieldType get type => _$this._type;
  set type(FieldType type) => _$this._type = type;

  FieldBuilder();

  FieldBuilder get _$this {
    if (_$v != null) {
      _disabled = _$v.disabled;
      _id = _$v.id;
      _isRequired = _$v.isRequired;
      _itemType = _$v.itemType;
      _localized = _$v.localized;
      _name = _$v.name;
      _type = _$v.type;
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
            disabled: disabled,
            id: id,
            isRequired: isRequired,
            itemType: itemType,
            localized: localized,
            name: name,
            type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
