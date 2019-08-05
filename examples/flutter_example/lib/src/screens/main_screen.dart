import 'package:flutter/material.dart';
import 'package:flutter_example/src/repository/contentful_repository.dart';

class MainScreen extends StatelessWidget {
  final _repo = ContentfulRepository();

  MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<void>(
          future: null,
          builder: (context, snapshot) {
            _repo.testRequest();
            return Text('data');
          },
        ),
      ),
    );
  }
}
