import 'package:flutter/material.dart';
import 'package:flutter_example/src/models/post.dart';

import 'package:flutter_example/src/widgets/post_details.dart';
import 'package:flutter_example/src/widgets/post_preview_item.dart';

class PostPreviewList extends StatelessWidget {
  final List<Post> postList;

  const PostPreviewList({
    @required this.postList,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: postList.length,
        itemBuilder: (_, index) {
          return PostPreviewItem(
            post: postList[index],
            postItemDidTapped: (post) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  settings: RouteSettings(name: '/post-${post.sys.id}'),
                  builder: (context) => PostDetails(post: post),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
