import 'package:built_value/serializer.dart';
import 'package:contentful_dart/src/models/models.dart';

class ContentfulJsonPlugin extends SerializerPlugin {
  @override
  Object afterDeserialize(Object object, FullType specifiedType) {
    return object;
  }

  @override
  Object afterSerialize(Object object, FullType specifiedType) {
    return object;
  }

  @override
  Object beforeDeserialize(Object object, FullType specifiedType) {
    if (specifiedType.root == Entry) {
      print('Entry: ${specifiedType.root} $object');
    } else {
      print('ContentfulJsonPlugin: ${specifiedType.root} $object');
    }
    return object;
  }

  @override
  Object beforeSerialize(Object object, FullType specifiedType) {
    return object;
  }
}
