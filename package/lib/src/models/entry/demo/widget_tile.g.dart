// GENERATED CODE - DO NOT MODIFY BY HAND

part of widget_tile;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WidgetTile> _$widgetTileSerializer = new _$WidgetTileSerializer();

class _$WidgetTileSerializer implements StructuredSerializer<WidgetTile> {
  @override
  final Iterable<Type> types = const [WidgetTile, _$WidgetTile];
  @override
  final String wireName = 'WidgetTile';

  @override
  Iterable<Object> serialize(Serializers serializers, WidgetTile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'view',
      serializers.serialize(object.view,
          specifiedType: const FullType(WidgetView)),
    ];

    return result;
  }

  @override
  WidgetTile deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WidgetTileBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'view':
          result.view.replace(serializers.deserialize(value,
              specifiedType: const FullType(WidgetView)) as WidgetView);
          break;
      }
    }

    return result.build();
  }
}

class _$WidgetTile extends WidgetTile {
  @override
  final WidgetView view;

  factory _$WidgetTile([void Function(WidgetTileBuilder) updates]) =>
      (new WidgetTileBuilder()..update(updates)).build();

  _$WidgetTile._({this.view}) : super._() {
    if (view == null) {
      throw new BuiltValueNullFieldError('WidgetTile', 'view');
    }
  }

  @override
  WidgetTile rebuild(void Function(WidgetTileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WidgetTileBuilder toBuilder() => new WidgetTileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WidgetTile && view == other.view;
  }

  @override
  int get hashCode {
    return $jf($jc(0, view.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WidgetTile')..add('view', view))
        .toString();
  }
}

class WidgetTileBuilder implements Builder<WidgetTile, WidgetTileBuilder> {
  _$WidgetTile _$v;

  WidgetViewBuilder _view;
  WidgetViewBuilder get view => _$this._view ??= new WidgetViewBuilder();
  set view(WidgetViewBuilder view) => _$this._view = view;

  WidgetTileBuilder();

  WidgetTileBuilder get _$this {
    if (_$v != null) {
      _view = _$v.view?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WidgetTile other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WidgetTile;
  }

  @override
  void update(void Function(WidgetTileBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WidgetTile build() {
    _$WidgetTile _$result;
    try {
      _$result = _$v ?? new _$WidgetTile._(view: view.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'view';
        view.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'WidgetTile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
