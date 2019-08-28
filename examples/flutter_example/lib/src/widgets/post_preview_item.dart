import 'package:flutter/material.dart';
import 'package:flutter_example/src/models/post.dart';

class PostPreviewItem extends StatelessWidget {
  final Post post;

  final ValueChanged<Post> postItemDidTapped;

  const PostPreviewItem({
    @required this.post,
    @required this.postItemDidTapped,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: UniqueKey(),
      behavior: HitTestBehavior.opaque,
      onTap: () => postItemDidTapped(post),
      child: Container(
        margin: const EdgeInsets.all(4),
        child: Image.network(
          'https://picsum.photos/id/100/400/400',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
