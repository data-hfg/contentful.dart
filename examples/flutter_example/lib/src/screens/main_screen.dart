import 'package:flutter/material.dart';
import 'package:flutter_example/src/models/post.dart';
import 'package:flutter_example/src/repository/contentful_repository.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _contentfulRepository = ContentfulRepository();

  List<Post> photoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Contentful Flutter Demo',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 1,
        bottomOpacity: 0,
      ),
      body: SafeArea(
        child: Center(
          child: Text('Demo'),
        ),
        // child: Center(
        //     child: PostPreviewList(
        //   postList: photoList,
        // )),
      ),
    );
  }

  @override
  void initState() {
    _getSpaceDetails();
    super.initState();
  }

  _getSpaceDetails() async {
    final post = await _contentfulRepository.getCurrentSpaceDetails();
    print(post);
  }
}
