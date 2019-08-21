import 'package:contentful_dart/contentful_dart.dart';
import 'package:flutter_example/src/utils/keys.dart';

class ContentfulRepository {
  final ContentfulClient _client;

  ContentfulRepository()
      : _client = ContentfulClient(
          client: ContentfulHttpClient(accessToken: Secrets.accessToken),
          spaceId: Secrets.spaceId,
        );

  Future<Space> getCurrentSpaceDetails() async {
    try {
      return await _client.getSpaceDetails(spaceid: Secrets.spaceId);
    } on ContentfulError catch (error) {
      throw ContentfulError(message: error.message);
    }
  }
}
