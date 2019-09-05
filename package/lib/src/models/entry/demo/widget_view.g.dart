// GENERATED CODE - DO NOT MODIFY BY HAND

part of widget_view;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WidgetView extends WidgetView {
  @override
  final String tittle;

  factory _$WidgetView([void Function(WidgetViewBuilder) updates]) =>
      (new WidgetViewBuilder()..update(updates)).build();

  _$WidgetView._({this.tittle}) : super._() {
    if (tittle == null) {
      throw new BuiltValueNullFieldError('WidgetView', 'tittle');
    }
  }

  @override
  WidgetView rebuild(void Function(WidgetViewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WidgetViewBuilder toBuilder() => new WidgetViewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WidgetView && tittle == other.tittle;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tittle.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WidgetView')..add('tittle', tittle))
        .toString();
  }
}

class WidgetViewBuilder implements Builder<WidgetView, WidgetViewBuilder> {
  _$WidgetView _$v;

  String _tittle;
  String get tittle => _$this._tittle;
  set tittle(String tittle) => _$this._tittle = tittle;

  WidgetViewBuilder();

  WidgetViewBuilder get _$this {
    if (_$v != null) {
      _tittle = _$v.tittle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WidgetView other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WidgetView;
  }

  @override
  void update(void Function(WidgetViewBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WidgetView build() {
    final _$result = _$v ?? new _$WidgetView._(tittle: tittle);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
