import 'package:contentful_dart/src/models/models.dart';
import 'package:contentful_dart/src/networking/contentful_client.dart';
import 'package:contentful_dart/src/networking/http_client.dart';
import 'package:http/http.dart' as http;
import 'package:matcher/matcher.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

class MockClient extends Mock implements ContentfulHttpClient {}

void main() {
  MockClient mockClient;
  ContentfulClient contentfulClient;
  final _baseUrl = 'cdn.contentful.com';
  final _spaceid = 'mock_space_id';
  final _accessToken = 'mock_access_token';

  group('ContentfulClient', () {
    setUp(() {
      mockClient = MockClient();
      contentfulClient = ContentfulClient(
        accessToken: _accessToken,
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
      when(
        mockClient.get(
          startsWith('https://$_baseUrl/spaces/$_spaceid'),
        ),
      ).thenAnswer(
        (_) async => http.Response(
          loadFixture('error'),
          200,
          headers: {'content-type': 'application/json; charset=UTF-8'},
        ),
      );

      //final response = await contentfulClient.getEntry<Post>()

      //expect(response, const TypeMatcher<Space>());
    });
  });
}
