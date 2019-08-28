import 'package:flutter/material.dart';
import 'package:flutter_example/src/repository/contentful_repository.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
