import 'package:contentful_dart/src/models/models.dart';

// abstract class Entry<T> {
//   Entry({
//     this.sys,
//     this.fields,
//   });

//   final SystemFields sys;
//   final T fields;
// }

mixin Entry<T> {
  SystemFields sys;
  T fields;
}
