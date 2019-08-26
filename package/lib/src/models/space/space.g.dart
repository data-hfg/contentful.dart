// GENERATED CODE - DO NOT MODIFY BY HAND

part of space;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Space> _$spaceSerializer = new _$SpaceSerializer();

class _$SpaceSerializer implements StructuredSerializer<Space> {
  @override
  final Iterable<Type> types = const [Space, _$Space];
  @override
  final String wireName = 'Space';

  @override
  Iterable<Object> serialize(Serializers serializers, Space object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'locales',
      serializers.serialize(object.locales,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Locale)])),
      'sys',
      serializers.serialize(object.sys,
          specifiedType: const FullType(SystemFields)),
    ];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Space deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SpaceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'locales':
          result.locales.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Locale)]))
              as BuiltList<dynamic>);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sys':
          result.sys.replace(serializers.deserialize(value,
              specifiedType: const FullType(SystemFields)) as SystemFields);
          break;
      }
    }

    return result.build();
  }
}

class _$Space extends Space {
  @override
  final BuiltList<Locale> locales;
  @override
  final String name;
  @override
  final SystemFields sys;

  factory _$Space([void Function(SpaceBuilder) updates]) =>
      (new SpaceBuilder()..update(updates)).build();

  _$Space._({this.locales, this.name, this.sys}) : super._() {
    if (locales == null) {
      throw new BuiltValueNullFieldError('Space', 'locales');
    }
    if (sys == null) {
      throw new BuiltValueNullFieldError('Space', 'sys');
    }
  }

  @override
  Space rebuild(void Function(SpaceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpaceBuilder toBuilder() => new SpaceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Space &&
        locales == other.locales &&
        name == other.name &&
        sys == other.sys;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, locales.hashCode), name.hashCode), sys.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Space')
          ..add('locales', locales)
          ..add('name', name)
          ..add('sys', sys))
        .toString();
  }
}

class SpaceBuilder implements Builder<Space, SpaceBuilder> {
  _$Space _$v;

  ListBuilder<Locale> _locales;
  ListBuilder<Locale> get locales =>
      _$this._locales ??= new ListBuilder<Locale>();
  set locales(ListBuilder<Locale> locales) => _$this._locales = locales;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  SystemFieldsBuilder _sys;
  SystemFieldsBuilder get sys => _$this._sys ??= new SystemFieldsBuilder();
  set sys(SystemFieldsBuilder sys) => _$this._sys = sys;

  SpaceBuilder();

  SpaceBuilder get _$this {
    if (_$v != null) {
      _locales = _$v.locales?.toBuilder();
      _name = _$v.name;
      _sys = _$v.sys?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Space other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Space;
  }

  @override
  void update(void Function(SpaceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Space build() {
    _$Space _$result;
    try {
      _$result = _$v ??
          new _$Space._(locales: locales.build(), name: name, sys: sys.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'locales';
        locales.build();

        _$failedField = 'sys';
        sys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Space', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
