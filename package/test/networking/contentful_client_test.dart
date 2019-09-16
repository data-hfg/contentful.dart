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
  final _spaceId = 'mock_space_id';

  group('ContentfulClient Tests:', () {
    setUp(() {
      mockClient = MockClient();
      contentfulClient = ContentfulClient(
        spaceId: _spaceId,
        client: mockClient,
      );
    });

    test('Get space details return Space', () async {
      when(
        mockClient.get(
          startsWith('https://$_baseUrl/spaces/$_spaceId'),
        ),
      ).thenAnswer(
        (_) async => http.Response(
          loadFixture('space'),
          200,
          headers: {'content-type': 'application/json; charset=UTF-8'},
        ),
      );

      final response = await contentfulClient.getSpaceDetails(
        spaceId: _spaceId,
      );

      expect(response, const TypeMatcher<Space>());
    });

    test('Get space details throw ContentfulError', () async {
      when(
        mockClient.get(
          startsWith('https://$_baseUrl/spaces/$_spaceId'),
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
          spaceId: _spaceId,
        ),
        throwsA(const TypeMatcher<ContentfulError>()),
      );
    });

    test('getEntry returns Entry model', () async {
      final params = {
        'contentType': 'post',
        'fields.id': '5ETMRzkl9KM4omyMwKAOki9'
      };

      when(
        mockClient.get(
          startsWith(
              'https://$_baseUrl/spaces/mock_space_id/entries/mock_entry_id?contentType=post&fields.id=5ETMRzkl9KM4omyMwKAOki9'),
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

    test('getEntry throws ContentfulError', () async {
      final params = {
        'contentType': 'post',
        'fields.id': '5ETMRzkl9KM4omyMwKAOki9'
      };
      when(
        mockClient.get(
          startsWith(
            'https://$_baseUrl/spaces/mock_space_id/entries/mock_entry_id?contentType=post&fields.id=5ETMRzkl9KM4omyMwKAOki9',
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

  test('Get ContentTypes return ContentTypeResponse', () async {
    when(
      mockClient.get(
        startsWith('https://$_baseUrl/spaces/$_spaceId/content_types'),
      ),
    ).thenAnswer(
      (_) async => http.Response(
        loadFixture('content_type_response'),
        200,
        headers: {'content-type': 'application/json; charset=UTF-8'},
      ),
    );

    final response = await contentfulClient.getContentTypes(
      spaceId: _spaceId,
    );
    expect(response, const TypeMatcher<ContentTypeResponse>());
  });

  test('Get ContentTypes throw ContentfulError', () async {
    when(
      mockClient.get(
        startsWith('https://$_baseUrl/spaces/$_spaceId/content_types'),
      ),
    ).thenAnswer(
      (_) async => http.Response(
        loadFixture('error'),
        404,
        headers: {'content-type': 'application/json; charset=UTF-8'},
      ),
    );

    expect(
      () => contentfulClient.getContentTypes(
        spaceId: _spaceId,
      ),
      throwsA(const TypeMatcher<ContentfulError>()),
    );
  });
}
