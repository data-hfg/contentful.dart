import 'package:flutter/material.dart';
import 'package:flutter_example/src/repository/contentful_repository.dart';
import 'package:flutter_example/src/widgets/post_preview_list.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _contentfulRepository = ContentfulRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: PostPreviewList(
        photoList: [],
      )),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  Future<void> _getSpace() async {
    final _ = await _contentfulRepository.getPosts();
  }
}
