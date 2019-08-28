import 'package:flutter/material.dart';

class PostPreviewItem extends StatelessWidget {
  final ValueChanged<String> postItemDidTapped;

  const PostPreviewItem({
    @required this.postItemDidTapped,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: UniqueKey(),
      behavior: HitTestBehavior.opaque,
      onTap: () => postItemDidTapped('121212'),
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
