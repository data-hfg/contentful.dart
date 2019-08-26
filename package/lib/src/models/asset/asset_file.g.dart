// GENERATED CODE - DO NOT MODIFY BY HAND

part of asset_file;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AssetFile> _$assetFileSerializer = new _$AssetFileSerializer();

class _$AssetFileSerializer implements StructuredSerializer<AssetFile> {
  @override
  final Iterable<Type> types = const [AssetFile, _$AssetFile];
  @override
  final String wireName = 'AssetFile';

  @override
  Iterable<Object> serialize(Serializers serializers, AssetFile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'contentType',
      serializers.serialize(object.contentType,
          specifiedType: const FullType(String)),
      'details',
      serializers.serialize(object.details,
          specifiedType: const FullType(AssetFileDetails)),
      'fileName',
      serializers.serialize(object.fileName,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AssetFile deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AssetFileBuilder();

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
        case 'details':
          result.details.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AssetFileDetails))
              as AssetFileDetails);
          break;
        case 'fileName':
          result.fileName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AssetFile extends AssetFile {
  @override
  final String contentType;
  @override
  final AssetFileDetails details;
  @override
  final String fileName;
  @override
  final String url;

  factory _$AssetFile([void Function(AssetFileBuilder) updates]) =>
      (new AssetFileBuilder()..update(updates)).build();

  _$AssetFile._({this.contentType, this.details, this.fileName, this.url})
      : super._() {
    if (contentType == null) {
      throw new BuiltValueNullFieldError('AssetFile', 'contentType');
    }
    if (details == null) {
      throw new BuiltValueNullFieldError('AssetFile', 'details');
    }
    if (fileName == null) {
      throw new BuiltValueNullFieldError('AssetFile', 'fileName');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('AssetFile', 'url');
    }
  }

  @override
  AssetFile rebuild(void Function(AssetFileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetFileBuilder toBuilder() => new AssetFileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssetFile &&
        contentType == other.contentType &&
        details == other.details &&
        fileName == other.fileName &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, contentType.hashCode), details.hashCode),
            fileName.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AssetFile')
          ..add('contentType', contentType)
          ..add('details', details)
          ..add('fileName', fileName)
          ..add('url', url))
        .toString();
  }
}

class AssetFileBuilder implements Builder<AssetFile, AssetFileBuilder> {
  _$AssetFile _$v;

  String _contentType;
  String get contentType => _$this._contentType;
  set contentType(String contentType) => _$this._contentType = contentType;

  AssetFileDetailsBuilder _details;
  AssetFileDetailsBuilder get details =>
      _$this._details ??= new AssetFileDetailsBuilder();
  set details(AssetFileDetailsBuilder details) => _$this._details = details;

  String _fileName;
  String get fileName => _$this._fileName;
  set fileName(String fileName) => _$this._fileName = fileName;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  AssetFileBuilder();

  AssetFileBuilder get _$this {
    if (_$v != null) {
      _contentType = _$v.contentType;
      _details = _$v.details?.toBuilder();
      _fileName = _$v.fileName;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssetFile other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AssetFile;
  }

  @override
  void update(void Function(AssetFileBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AssetFile build() {
    _$AssetFile _$result;
    try {
      _$result = _$v ??
          new _$AssetFile._(
              contentType: contentType,
              details: details.build(),
              fileName: fileName,
              url: url);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'details';
        details.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AssetFile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
