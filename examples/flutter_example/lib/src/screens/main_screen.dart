import 'package:flutter/material.dart';
import 'package:flutter_example/src/prototyping_ui/photo.dart';
import 'package:flutter_example/src/prototyping_ui/photos_repository.dart';
import 'package:flutter_example/src/repository/contentful_repository.dart';
import 'package:flutter_example/src/widgets/post_preview_list.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _photoRepository = PhotoRepository();

  List<Photo> photoList = [];

  final _contentfulRepository = ContentfulRepository();

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
            child: PostPreviewList(
          photoList: photoList,
        )),
      ),
    );
  }

  @override
  void initState() {
    _getPhotos();
    _getPost();
    super.initState();
  }

  _getPhotos() async {
    final items = await _photoRepository.fetchPhotos(page: 3);
    setState(() => photoList = items.toList());
  }

  _getPost() async {
    final post =
        await _contentfulRepository.getPost(postId: '31TNnjHlfaGUoMOwU0M2og');
    print(post);
  }
}
