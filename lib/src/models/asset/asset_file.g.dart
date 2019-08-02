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
      'fileName',
      serializers.serialize(object.fileName,
          specifiedType: const FullType(String)),
      'contentType',
      serializers.serialize(object.contentType,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'details',
      serializers.serialize(object.details,
          specifiedType: const FullType(AssetFileDetails)),
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
        case 'fileName':
          result.fileName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contentType':
          result.contentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'details':
          result.details.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AssetFileDetails))
              as AssetFileDetails);
          break;
      }
    }

    return result.build();
  }
}

class _$AssetFile extends AssetFile {
  @override
  final String fileName;
  @override
  final String contentType;
  @override
  final String url;
  @override
  final AssetFileDetails details;

  factory _$AssetFile([void Function(AssetFileBuilder) updates]) =>
      (new AssetFileBuilder()..update(updates)).build();

  _$AssetFile._({this.fileName, this.contentType, this.url, this.details})
      : super._() {
    if (fileName == null) {
      throw new BuiltValueNullFieldError('AssetFile', 'fileName');
    }
    if (contentType == null) {
      throw new BuiltValueNullFieldError('AssetFile', 'contentType');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('AssetFile', 'url');
    }
    if (details == null) {
      throw new BuiltValueNullFieldError('AssetFile', 'details');
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
        fileName == other.fileName &&
        contentType == other.contentType &&
        url == other.url &&
        details == other.details;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, fileName.hashCode), contentType.hashCode), url.hashCode),
        details.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AssetFile')
          ..add('fileName', fileName)
          ..add('contentType', contentType)
          ..add('url', url)
          ..add('details', details))
        .toString();
  }
}

class AssetFileBuilder implements Builder<AssetFile, AssetFileBuilder> {
  _$AssetFile _$v;

  String _fileName;
  String get fileName => _$this._fileName;
  set fileName(String fileName) => _$this._fileName = fileName;

  String _contentType;
  String get contentType => _$this._contentType;
  set contentType(String contentType) => _$this._contentType = contentType;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  AssetFileDetailsBuilder _details;
  AssetFileDetailsBuilder get details =>
      _$this._details ??= new AssetFileDetailsBuilder();
  set details(AssetFileDetailsBuilder details) => _$this._details = details;

  AssetFileBuilder();

  AssetFileBuilder get _$this {
    if (_$v != null) {
      _fileName = _$v.fileName;
      _contentType = _$v.contentType;
      _url = _$v.url;
      _details = _$v.details?.toBuilder();
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
              fileName: fileName,
              contentType: contentType,
              url: url,
              details: details.build());
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
