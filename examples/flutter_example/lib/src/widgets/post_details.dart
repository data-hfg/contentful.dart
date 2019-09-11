import 'package:flutter/material.dart';
import 'package:flutter_example/src/models/post.dart';
import 'package:flutter_example/src/utils/free_functions.dart';

class PostDetails extends StatelessWidget {
  final Post post;

  const PostDetails({
    @required this.post,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 1,
        bottomOpacity: 0,
        leading: FlatButton(
          child: Text('<'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          post.fields.title,
          maxLines: 2,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  width: screenSize(context: context).width,
                  height: 300,
                  child: Image.network(
                    post.computedImageUrl(),
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'By ${post.fields.author}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Divider(color: Colors.grey[350], height: 2),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                  child: Text(
                    post.fields.body,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                Divider(color: Colors.grey[350], height: 2),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 4, 8, 8),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 8,
                      runSpacing: 4,
                      children: [
                        for (final tag in post.fields.tags)
                          Chip(
                            backgroundColor: Colors.black38,
                            label: Text(
                              tag.toUpperCase(),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
