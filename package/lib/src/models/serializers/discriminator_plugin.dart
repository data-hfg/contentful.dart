import 'package:built_value/serializer.dart';

class DiscriminatorPlugin extends SerializerPlugin {
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
    // TODO: implement beforeDeserialize
    return null;
  }

  @override
  Object beforeSerialize(Object object, FullType specifiedType) {
    return object;
  }
}
