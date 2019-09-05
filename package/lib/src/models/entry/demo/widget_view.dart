library widget_view;

import 'package:built_value/built_value.dart';

part 'widget_view.g.dart';

abstract class WidgetView implements Built<WidgetView, WidgetViewBuilder> {
  String get tittle;
  WidgetView._();

  factory WidgetView([updates(WidgetViewBuilder b)]) = _$WidgetView;
}
