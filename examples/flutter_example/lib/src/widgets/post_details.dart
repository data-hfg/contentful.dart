import 'package:flutter/material.dart';
import 'package:flutter_example/src/prototyping_ui/photo.dart';

class PostDetails extends StatelessWidget {
  final Photo photo;

  const PostDetails({
    @required this.photo,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlatButton(
          child: Text('<'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            'Phost by ${photo.author}',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 1,
        bottomOpacity: 0,
      ),
      body: Center(
        child: Container(
          child: Image.network(
            photo.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
