import 'package:contentful_dart/contentful_dart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_example/src/models/post.dart';
import 'package:flutter_example/src/utils/keys.dart';

class ContentfulRepository {
  final ContentfulClient _contentfulClient;

  ContentfulRepository()
      : _contentfulClient = ContentfulClient(
          client: ContentfulHttpClient(accessToken: Secrets.accessToken),
          spaceId: Secrets.spaceId,
        );

  Future<Space> getCurrentSpaceDetails() async {
    try {
      return await _contentfulClient.getSpaceDetails(spaceid: Secrets.spaceId);
    } on ContentfulError catch (error) {
      throw ContentfulError(message: error.message);
    }
  }

  Future<ContentTypeResponse> getContentTypes() async {
    try {
      return await _contentfulClient.getContentTypes(spaceid: Secrets.spaceId);
    } on ContentfulError catch (error) {
      throw ContentfulError(message: error.message);
    }
  }

  Future<Post> getPost({
    @required String postId,
  }) async {
    try {
      return await _contentfulClient.getEntry<Post>(
        entryId: postId,
        fromJson: Post.fromJson,
      );
    } on ContentfulError catch (error) {
      throw ContentfulError(message: error.message);
    }
  }

  // Future<Post> getPosts() async {
  //   try {
  //     final entries = await _contentfulClient.getEntries<Post>(
  //       params: {
  //         'content_type': 'blogPost',
  //         'skip': '0',
  //         'limit': '100',
  //         'order': 'sys.createdAt',
  //       },
  //       fromJson: Post.fromJson,
  //     );

  //     return entries.items.first;
  //   } on ContentfulError catch (error) {
  //     throw ContentfulError(message: error.message);
  //   }
  // }
}
