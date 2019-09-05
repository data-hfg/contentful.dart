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
  });
}
