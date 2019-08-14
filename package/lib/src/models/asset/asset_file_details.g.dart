// GENERATED CODE - DO NOT MODIFY BY HAND

part of asset_file_details;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AssetFileDetails> _$assetFileDetailsSerializer =
    new _$AssetFileDetailsSerializer();

class _$AssetFileDetailsSerializer
    implements StructuredSerializer<AssetFileDetails> {
  @override
  final Iterable<Type> types = const [AssetFileDetails, _$AssetFileDetails];
  @override
  final String wireName = 'AssetFileDetails';

  @override
  Iterable<Object> serialize(Serializers serializers, AssetFileDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'size',
      serializers.serialize(object.size, specifiedType: const FullType(int)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(AssetFileDetailsImage)),
    ];

    return result;
  }

  @override
  AssetFileDetails deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AssetFileDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'image':
          result.image.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AssetFileDetailsImage))
              as AssetFileDetailsImage);
          break;
      }
    }

    return result.build();
  }
}

class _$AssetFileDetails extends AssetFileDetails {
  @override
  final int size;
  @override
  final AssetFileDetailsImage image;

  factory _$AssetFileDetails(
          [void Function(AssetFileDetailsBuilder) updates]) =>
      (new AssetFileDetailsBuilder()..update(updates)).build();

  _$AssetFileDetails._({this.size, this.image}) : super._() {
    if (size == null) {
      throw new BuiltValueNullFieldError('AssetFileDetails', 'size');
    }
    if (image == null) {
      throw new BuiltValueNullFieldError('AssetFileDetails', 'image');
    }
  }

  @override
  AssetFileDetails rebuild(void Function(AssetFileDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetFileDetailsBuilder toBuilder() =>
      new AssetFileDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssetFileDetails &&
        size == other.size &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, size.hashCode), image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AssetFileDetails')
          ..add('size', size)
          ..add('image', image))
        .toString();
  }
}

class AssetFileDetailsBuilder
    implements Builder<AssetFileDetails, AssetFileDetailsBuilder> {
  _$AssetFileDetails _$v;

  int _size;
  int get size => _$this._size;
  set size(int size) => _$this._size = size;

  AssetFileDetailsImageBuilder _image;
  AssetFileDetailsImageBuilder get image =>
      _$this._image ??= new AssetFileDetailsImageBuilder();
  set image(AssetFileDetailsImageBuilder image) => _$this._image = image;

  AssetFileDetailsBuilder();

  AssetFileDetailsBuilder get _$this {
    if (_$v != null) {
      _size = _$v.size;
      _image = _$v.image?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssetFileDetails other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AssetFileDetails;
  }

  @override
  void update(void Function(AssetFileDetailsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AssetFileDetails build() {
    _$AssetFileDetails _$result;
    try {
      _$result =
          _$v ?? new _$AssetFileDetails._(size: size, image: image.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'image';
        image.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AssetFileDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
