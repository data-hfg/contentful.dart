import 'package:contentful_dart/contentful.dart';
import 'package:flutter_example/src/utils/keys.dart';

class ContentfulRepository {
  final ContentfulClient client;

  ContentfulRepository()
      : client = ContentfulClient(
            accessToken: Secrets.accessToken, spaceId: Secrets.spaceId);

  void testRequest() async {
    try {
      final widgetProducts = await client.getEntries(params: {
        'contentType': 'widgetProducts',
      });
      print('Widget Products: $widgetProducts');
    } on ContentfulError catch (error) {
      throw ContentfulError(message: error.message);
    }
  }
}
