import 'package:flutter/material.dart';
import 'package:flutter_example/src/prototyping_ui/photo.dart';
import 'package:flutter_example/src/widgets/post_details.dart';
import 'package:flutter_example/src/widgets/post_preview_item.dart';

class PostPreviewList extends StatelessWidget {
  final List<Photo> photoList;

  const PostPreviewList({
    @required this.photoList,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (_, index) {
          return PostPreviewItem(
              photo: photoList[index],
              postItemDidTapped: (photo) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    settings: RouteSettings(name: '/photo-${photo.id}'),
                    builder: (context) => PostDetails(photo: photo),
                  ),
                );
              });
        },
      ),
    );
  }
}
