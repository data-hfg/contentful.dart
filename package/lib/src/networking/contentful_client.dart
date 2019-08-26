import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:contentful_dart/src/models/models.dart';
import 'package:contentful_dart/src/networking/contentful_http_client.dart';
import 'package:meta/meta.dart';

/// Client object for performing requests against the Contentful Delivery
/// and Preview APIs.
class ContentfulClient {
  /// Base delivery host
  static const _delivery = 'cdn.contentful.com';

  /// Base preview host
  static const _preview = 'preview.contentful.com';

  /// ContentfulHttpClient
  final ContentfulHttpClient client;

  /// The base domain that all URIs have for each request the client makes.
  final String host;

  /// The identifier of the space this Client is set to interface with.
  final String spaceId;

  /// The identifier of the space this Client is set to interface with.
  final String environmentId;

  factory ContentfulClient({
    @required ContentfulHttpClient client,
    @required String spaceId,
  }) {
    return ContentfulClient._(
      client: client,
      spaceId: spaceId,
    );
  }

  const ContentfulClient._({
    @required this.client,
    @required this.spaceId,
  })  : this.host = _delivery,
        this.environmentId = 'master';

  void close() {
    this.client.close();
  }

  Future<EntryList<T>> getEntries<T extends Entry>({
    @required Map<String, dynamic> params,
    @required T Function(String jsonString) fromJson,
  }) async {
    final response = await client.get(_uri(path: 'entries', params: params));

    if (response.statusCode != 200) {
      throw ContentfulError(
        message:
            '''Cannot get list of entries. Finished with error: ${response.body}''',
      );
    }

    final jsonResponse = json.decode(utf8.decode(response.bodyBytes));

    if (jsonResponse['includes'] != null) {
      final includes = Includes.fromJson(jsonResponse['includes']);
      jsonResponse['items'] = includes.resolveLinks(jsonResponse['items']);
    }

    return EntryList.fromJson(response.body);
  }

  Future<T> getEntry<T extends Entry>({
    @required String entryId,
    @required Map<String, dynamic> params,
    @required T Function(String jsonString) fromJson,
  }) async {
    final response = await client.get(_uri(
      path: 'entries/$entryId',
      params: params,
    ));
    if (response.statusCode != 200) {
      throw ContentfulError(
        message:
            '''Cannot get entry with id: $entryId. Finished with error: ${response.body}''',
      );
    }
    return fromJson(response.body);
  }

  Future<Space> getSpaceDetails({@required String spaceid}) async {
    final response = await client.get('https://$_delivery/spaces/$spaceid');
    if (response.statusCode != 200) {
      throw ContentfulError(
          message:
              '''Cannot get Space with id: $spaceid. Finished with error: ${response.body}''');
    }
    return Space.fromJson(response.body);
  }

  Future<ContentTypeResponse> getContentTypes(
      {@required String spaceid}) async {
    final response =
        await client.get('https://$_delivery/spaces/$spaceid/content_types');
    if (response.statusCode != 200) {
      throw ContentfulError(
          message:
              '''Cannot get Content Types for space id: $spaceid. Finished with error: ${response.body}''');
    }
    return ContentTypeResponse.fromJson(response.body);
  }

  String _uri({
    @required String path,
    Map<String, dynamic> params,
  }) {
    final url = Uri(
      scheme: 'https',
      host: host,
      path: '/spaces/$spaceId/$path',
      queryParameters: params,
    );
    print(url);
    return url.toString();
  }
}
