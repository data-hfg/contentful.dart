import 'package:flutter/material.dart';
import 'package:flutter_example/src/prototyping_ui/photo.dart';

class PostPreviewItem extends StatelessWidget {
  final Photo photo;
  final ValueChanged<Photo> postItemDidTapped;

  const PostPreviewItem({
    @required this.photo,
    @required this.postItemDidTapped,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: UniqueKey(),
      behavior: HitTestBehavior.opaque,
      onTap: () => postItemDidTapped(photo),
      child: Container(
        margin: const EdgeInsets.all(4),
        child: Image.network(
          photo.computedImageUrl(),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
