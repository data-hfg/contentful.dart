import 'package:flutter/material.dart';

class PostPreviewList extends StatelessWidget {
  const PostPreviewList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (_, index) {
          return PhotoItem(photo: photoList[index]);
        },
      ),
    );
  }
}
