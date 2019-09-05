import 'package:built_collection/built_collection.dart';
import 'package:built_value_test/matcher.dart';
import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';
import '../utils/models/post.dart';

void main() {
  group('Post Tests:', () {
    test('returns instance of Post from json', () {
      final post = Post.fromJson(loadFixture('post'));

      expect(post, const TypeMatcher<Post>());
    });

    test('returns json string from Post', () {
      final post = Post.fromJson(loadFixture('asset_file'));

      final postString = post.toJson();

      expect(postString, const TypeMatcher<String>());
    });

    // test('built_value matcher', () {
    //   final value = AssetFile(
    //     (b) => b
    //       ..contentType = 'contentType'
    //       ..fileName = 'fileName'
    //       ..url = 'url'
    //       ..details = AssetFileDetails(
    //         (b) => b
    //           ..size = 100
    //           ..image = AssetFileDetailsImage(
    //             (b) => b
    //               ..height = 100
    //               ..width = 200,
    //           ).toBuilder(),
    //       ).toBuilder(),
    //   );

    //   expect(value, equalsBuilt(value));
    // });

    // test('compared value matcher', () {
    //   final value = AssetFile(
    //     (b) => b
    //       ..contentType = 'contentType'
    //       ..fileName = 'fileName'
    //       ..url = 'url'
    //       ..details = AssetFileDetails(
    //         (b) => b
    //           ..size = 100
    //           ..image = AssetFileDetailsImage(
    //             (b) => b
    //               ..height = 100
    //               ..width = 200,
    //           ).toBuilder(),
    //       ).toBuilder(),
    //   );

    //   final otherValue = AssetFile(
    //     (b) => b
    //       ..contentType = 'contentType'
    //       ..fileName = 'fileName'
    //       ..url = 'url'
    //       ..details = AssetFileDetails(
    //         (b) => b
    //           ..size = 100
    //           ..image = AssetFileDetailsImage(
    //             (b) => b
    //               ..height = 100
    //               ..width = 200,
    //           ).toBuilder(),
    //       ).toBuilder(),
    //   );

    //   expect(value, otherValue);
    // });

    // test('reports if not same', () {
    //   final value = AssetFile(
    //     (b) => b
    //       ..contentType = 'contentType'
    //       ..fileName = 'fileName'
    //       ..url = 'url'
    //       ..details = AssetFileDetails(
    //         (b) => b
    //           ..size = 100
    //           ..image = AssetFileDetailsImage(
    //             (b) => b
    //               ..height = 100
    //               ..width = 200,
    //           ).toBuilder(),
    //       ).toBuilder(),
    //   );

    //   final otherValue = value.rebuild(
    //     (b) => b..contentType = 'not a contentType',
    //   );

    //   expectMismatch(value, otherValue, '');
    // });
  });
}
