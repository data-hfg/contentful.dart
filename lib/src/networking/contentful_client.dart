import 'package:contentful_dart/src/configuration/host.dart';
import 'package:contentful_dart/src/networking/http_client.dart';
import 'package:meta/meta.dart';

/// Client object for performing requests against the Contentful Delivery
/// and Preview APIs.
class ContentfulClient {
  static const _baseUrl = 'cdn.contentful.com';

  final HttpClient client;

  /// The identifier of the space this Client is set to interface with.
  final String spaceId;

  /// The base domain that all URIs have for each request the client makes.
  final String host;

  factory ContentfulClient({
    @required String spaceId,
    @required String accessToken,
  }) {
    final client = HttpClient(accessToken: accessToken);
    return ContentfulClient._(
      client: client,
      spaceId: spaceId,
    );
  }

  const ContentfulClient._({
    @required this.client,
    @required this.spaceId,
    this.host = _baseUrl,
  })  : assert(client != null),
        assert(spaceId != null);

  void close() {
    this.client.close();
  }

  Uri _uri({
    @required String path,
    Map<String, dynamic> params,
  }) =>
      Uri(
        scheme: 'https',
        host: host,
        path: '/spaces/$spaceId/environments/master$path',
        queryParameters: params,
      );
}
