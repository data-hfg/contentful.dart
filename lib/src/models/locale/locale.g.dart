// GENERATED CODE - DO NOT MODIFY BY HAND

part of locale;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Locale> _$localeSerializer = new _$LocaleSerializer();

class _$LocaleSerializer implements StructuredSerializer<Locale> {
  @override
  final Iterable<Type> types = const [Locale, _$Locale];
  @override
  final String wireName = 'Locale';

  @override
  Iterable<Object> serialize(Serializers serializers, Locale object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'default',
      serializers.serialize(object.isDefault,
          specifiedType: const FullType(bool)),
    ];
    if (object.fallbackCode != null) {
      result
        ..add('fallbackCode')
        ..add(serializers.serialize(object.fallbackCode,
            specifiedType: const FullType(String)));
    }
    if (object.sys != null) {
      result
        ..add('sys')
        ..add(serializers.serialize(object.sys,
            specifiedType: const FullType(SystemFields)));
    }
    return result;
  }

  @override
  Locale deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocaleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'default':
          result.isDefault = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'fallbackCode':
          result.fallbackCode = serializers.deserialize(value,
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

class _$Locale extends Locale {
  @override
  final String code;
  @override
  final String name;
  @override
  final bool isDefault;
  @override
  final String fallbackCode;
  @override
  final SystemFields sys;

  factory _$Locale([void Function(LocaleBuilder) updates]) =>
      (new LocaleBuilder()..update(updates)).build();

  _$Locale._(
      {this.code, this.name, this.isDefault, this.fallbackCode, this.sys})
      : super._() {
    if (code == null) {
      throw new BuiltValueNullFieldError('Locale', 'code');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Locale', 'name');
    }
    if (isDefault == null) {
      throw new BuiltValueNullFieldError('Locale', 'isDefault');
    }
  }

  @override
  Locale rebuild(void Function(LocaleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocaleBuilder toBuilder() => new LocaleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Locale &&
        code == other.code &&
        name == other.name &&
        isDefault == other.isDefault &&
        fallbackCode == other.fallbackCode &&
        sys == other.sys;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, code.hashCode), name.hashCode), isDefault.hashCode),
            fallbackCode.hashCode),
        sys.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Locale')
          ..add('code', code)
          ..add('name', name)
          ..add('isDefault', isDefault)
          ..add('fallbackCode', fallbackCode)
          ..add('sys', sys))
        .toString();
  }
}

class LocaleBuilder implements Builder<Locale, LocaleBuilder> {
  _$Locale _$v;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  bool _isDefault;
  bool get isDefault => _$this._isDefault;
  set isDefault(bool isDefault) => _$this._isDefault = isDefault;

  String _fallbackCode;
  String get fallbackCode => _$this._fallbackCode;
  set fallbackCode(String fallbackCode) => _$this._fallbackCode = fallbackCode;

  SystemFieldsBuilder _sys;
  SystemFieldsBuilder get sys => _$this._sys ??= new SystemFieldsBuilder();
  set sys(SystemFieldsBuilder sys) => _$this._sys = sys;

  LocaleBuilder();

  LocaleBuilder get _$this {
    if (_$v != null) {
      _code = _$v.code;
      _name = _$v.name;
      _isDefault = _$v.isDefault;
      _fallbackCode = _$v.fallbackCode;
      _sys = _$v.sys?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Locale other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Locale;
  }

  @override
  void update(void Function(LocaleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Locale build() {
    _$Locale _$result;
    try {
      _$result = _$v ??
          new _$Locale._(
              code: code,
              name: name,
              isDefault: isDefault,
              fallbackCode: fallbackCode,
              sys: _sys?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sys';
        _sys?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Locale', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
