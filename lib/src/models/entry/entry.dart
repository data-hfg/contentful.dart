import 'package:contentful.dart/src/models/models.dart';

abstract class Entry<T> {
  Entry({
    this.sys,
    this.fields,
  });

  final SystemFields sys;
  final T fields;
}
