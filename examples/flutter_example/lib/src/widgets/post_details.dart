import 'package:flutter/material.dart';

class PostDetails extends StatelessWidget {
  const PostDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlatButton(
          child: Text(
            'Back',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            'Post bt Author',
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
            'https://picsum.photos/id/100/800/800',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
