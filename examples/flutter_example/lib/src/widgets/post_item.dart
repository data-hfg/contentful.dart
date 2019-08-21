import 'package:flutter/material.dart';
import 'package:flutter_example/src/models/post.dart';

class PostItems extends StatelessWidget {
  final Post post;
  final ValueChanged<Post> postItemDidTapped;

  const PostItems({
    Key key,
    @required this.post,
    @required this.postItemDidTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: UniqueKey(),
      behavior: HitTestBehavior.opaque,
      onTap: () => postItemDidTapped(post),
      child: Container(
        child: Text(
          post.fields.description,
        ),
      ),
    );
  }
}
