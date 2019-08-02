// GENERATED CODE - DO NOT MODIFY BY HAND

part of asset_file_details_image;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AssetFileDetailsImage> _$assetFileDetailsImageSerializer =
    new _$AssetFileDetailsImageSerializer();

class _$AssetFileDetailsImageSerializer
    implements StructuredSerializer<AssetFileDetailsImage> {
  @override
  final Iterable<Type> types = const [
    AssetFileDetailsImage,
    _$AssetFileDetailsImage
  ];
  @override
  final String wireName = 'AssetFileDetailsImage';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AssetFileDetailsImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'height',
      serializers.serialize(object.height, specifiedType: const FullType(int)),
      'width',
      serializers.serialize(object.width, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  AssetFileDetailsImage deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AssetFileDetailsImageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$AssetFileDetailsImage extends AssetFileDetailsImage {
  @override
  final int height;
  @override
  final int width;

  factory _$AssetFileDetailsImage(
          [void Function(AssetFileDetailsImageBuilder) updates]) =>
      (new AssetFileDetailsImageBuilder()..update(updates)).build();

  _$AssetFileDetailsImage._({this.height, this.width}) : super._() {
    if (height == null) {
      throw new BuiltValueNullFieldError('AssetFileDetailsImage', 'height');
    }
    if (width == null) {
      throw new BuiltValueNullFieldError('AssetFileDetailsImage', 'width');
    }
  }

  @override
  AssetFileDetailsImage rebuild(
          void Function(AssetFileDetailsImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetFileDetailsImageBuilder toBuilder() =>
      new AssetFileDetailsImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssetFileDetailsImage &&
        height == other.height &&
        width == other.width;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, height.hashCode), width.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AssetFileDetailsImage')
          ..add('height', height)
          ..add('width', width))
        .toString();
  }
}

class AssetFileDetailsImageBuilder
    implements Builder<AssetFileDetailsImage, AssetFileDetailsImageBuilder> {
  _$AssetFileDetailsImage _$v;

  int _height;
  int get height => _$this._height;
  set height(int height) => _$this._height = height;

  int _width;
  int get width => _$this._width;
  set width(int width) => _$this._width = width;

  AssetFileDetailsImageBuilder();

  AssetFileDetailsImageBuilder get _$this {
    if (_$v != null) {
      _height = _$v.height;
      _width = _$v.width;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssetFileDetailsImage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AssetFileDetailsImage;
  }

  @override
  void update(void Function(AssetFileDetailsImageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AssetFileDetailsImage build() {
    final _$result =
        _$v ?? new _$AssetFileDetailsImage._(height: height, width: width);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
