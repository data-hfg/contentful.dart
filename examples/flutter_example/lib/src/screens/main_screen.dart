import 'package:flutter/material.dart';
import 'package:flutter_example/src/repository/contentful_repository.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _repo = ContentfulRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('data'),
      ),
    );
  }

  @override
  void initState() {
    //_getSpace();
    super.initState();
  }

  Future<void> _getSpace() async {
    final _ = await _repo.getPosts();
  }
}
