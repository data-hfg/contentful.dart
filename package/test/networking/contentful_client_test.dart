import 'package:contentful_dart/src/models/models.dart';
import 'package:contentful_dart/src/networking/contentful_client.dart';
import 'package:contentful_dart/src/networking/contentful_http_client.dart';
import 'package:http/http.dart' as http;
import 'package:matcher/matcher.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';
import '../utils/models/post.dart';

class MockClient extends Mock implements ContentfulHttpClient {}

void main() {
  MockClient mockClient;
  ContentfulClient contentfulClient;
  final _baseUrl = 'cdn.contentful.com';
  final _spaceid = 'mock_space_id';
  // final _accessToken = 'mock_access_token';

  group('ContentfulClient', () {
    setUp(() {
      mockClient = MockClient();
      contentfulClient = ContentfulClient(
        spaceId: _spaceid,
        client: mockClient,
      );
    });

    test('Get space details return Space', () async {
      when(
        mockClient.get(
          startsWith('https://$_baseUrl/spaces/$_spaceid'),
        ),
      ).thenAnswer(
        (_) async => http.Response(
          loadFixture('space'),
          200,
          headers: {'content-type': 'application/json; charset=UTF-8'},
        ),
      );

      final response = await contentfulClient.getSpaceDetails(
        spaceid: _spaceid,
      );

      expect(response, const TypeMatcher<Space>());
    });

    test('Get space details throw ContentfulError', () async {
      when(
        mockClient.get(
          startsWith('https://$_baseUrl/spaces/$_spaceid'),
        ),
      ).thenAnswer(
        (_) async => http.Response(
          loadFixture('error'),
          404,
          headers: {'content-type': 'application/json; charset=UTF-8'},
        ),
      );

      expect(
        () => contentfulClient.getSpaceDetails(
          spaceid: _spaceid,
        ),
        throwsA(const TypeMatcher<ContentfulError>()),
      );
    });

    test('getEntry return Entry model', () async {
      final params = {
        'contentType': 'post',
        'fields.id': '5ETMRzkl9KM4omyMwKAOki9'
      };

      when(
        mockClient.get(
          startsWith(
              'https://cdn.contentful.com/spaces/mock_space_id/master/entries/mock_entry_id?contentType=post&fields.id=5ETMRzkl9KM4omyMwKAOki9'),
        ),
      ).thenAnswer(
        (_) async => http.Response(
          loadFixture('post'),
          200,
          headers: {'content-type': 'application/json; charset=UTF-8'},
        ),
      );

      final response = await contentfulClient.getEntry<Post>(
        entryId: 'mock_entry_id',
        params: params,
        fromJson: Post.fromJson,
      );

      expect(response, const TypeMatcher<Post>());
    });

    test('getEntry  throw ContentfulError', () async {
      final params = {
        'contentType': 'post',
        'fields.id': '5ETMRzkl9KM4omyMwKAOki9'
      };
      when(
        mockClient.get(
          startsWith(
            'https://cdn.contentful.com/spaces/mock_space_id/master/entries/mock_entry_id?contentType=post&fields.id=5ETMRzkl9KM4omyMwKAOki9',
          ),
        ),
      ).thenAnswer(
        (_) async => http.Response(
          loadFixture('error'),
          404,
          headers: {'content-type': 'application/json; charset=UTF-8'},
        ),
      );

      expect(
        () => contentfulClient.getEntry<Post>(
          entryId: 'mock_entry_id',
          params: params,
          fromJson: Post.fromJson,
        ),
        throwsA(const TypeMatcher<ContentfulError>()),
      );
    });
  });

  test('Close client', () async {
    contentfulClient.close();

    expect(contentfulClient.client.accessToken, const TypeMatcher<Null>());
  });
}
