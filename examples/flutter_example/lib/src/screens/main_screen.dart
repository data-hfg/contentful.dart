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

  // final _contentfulRepository = ContentfulRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: PostPreviewList(
        photoList: photoList,
      )),
    );
  }

  @override
  void initState() {
    _getPhotos();
    super.initState();
  }

  _getPhotos() async {
    final items = await _photoRepository.fetchPhotos(page: 1);
    setState(() => photoList = items.toList());
  }
  // Future<void> _getSpace() async {
  //   final _ = await _contentfulRepository.getPosts();
  // }
}
