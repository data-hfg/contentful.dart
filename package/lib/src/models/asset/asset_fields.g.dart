// GENERATED CODE - DO NOT MODIFY BY HAND

part of asset_fields;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AssetFields> _$assetFieldsSerializer = new _$AssetFieldsSerializer();

class _$AssetFieldsSerializer implements StructuredSerializer<AssetFields> {
  @override
  final Iterable<Type> types = const [AssetFields, _$AssetFields];
  @override
  final String wireName = 'AssetFields';

  @override
  Iterable<Object> serialize(Serializers serializers, AssetFields object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'file',
      serializers.serialize(object.file,
          specifiedType: const FullType(AssetFile)),
    ];

    return result;
  }

  @override
  AssetFields deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AssetFieldsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'file':
          result.file.replace(serializers.deserialize(value,
              specifiedType: const FullType(AssetFile)) as AssetFile);
          break;
      }
    }

    return result.build();
  }
}

class _$AssetFields extends AssetFields {
  @override
  final String title;
  @override
  final AssetFile file;

  factory _$AssetFields([void Function(AssetFieldsBuilder) updates]) =>
      (new AssetFieldsBuilder()..update(updates)).build();

  _$AssetFields._({this.title, this.file}) : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('AssetFields', 'title');
    }
    if (file == null) {
      throw new BuiltValueNullFieldError('AssetFields', 'file');
    }
  }

  @override
  AssetFields rebuild(void Function(AssetFieldsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetFieldsBuilder toBuilder() => new AssetFieldsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssetFields && title == other.title && file == other.file;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, title.hashCode), file.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AssetFields')
          ..add('title', title)
          ..add('file', file))
        .toString();
  }
}

class AssetFieldsBuilder implements Builder<AssetFields, AssetFieldsBuilder> {
  _$AssetFields _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  AssetFileBuilder _file;
  AssetFileBuilder get file => _$this._file ??= new AssetFileBuilder();
  set file(AssetFileBuilder file) => _$this._file = file;

  AssetFieldsBuilder();

  AssetFieldsBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _file = _$v.file?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssetFields other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AssetFields;
  }

  @override
  void update(void Function(AssetFieldsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AssetFields build() {
    _$AssetFields _$result;
    try {
      _$result = _$v ?? new _$AssetFields._(title: title, file: file.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'file';
        file.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AssetFields', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
