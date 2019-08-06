import 'package:contentful_dart/contentful.dart';
import 'package:meta/meta.dart';
import 'package:flutter_example/src/utils/keys.dart';

class ContentfulRepository {
  final ContentfulClient client;

  ContentfulRepository()
      : client = ContentfulClient(
          accessToken: Secrets.accessToken,
          spaceId: Secrets.spaceId,
        );

  Future<Space> getCurrentSpaceDetails() async {
    try {
      return await client.getSpaceDetails(spaceid: Secrets.spaceId);
    } on ContentfulError catch (error) {
      throw ContentfulError(message: error.message);
    }
  }
}
