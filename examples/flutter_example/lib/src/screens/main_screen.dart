import 'package:flutter/material.dart';
import 'package:contentful_dart/contentful.dart';
import 'package:flutter_example/src/utils/keys.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contentful = ContentfulClient(
      spaceId: Secrets.spaceId,
      accessToken: Secrets.accessToken,
    );
    return Scaffold(
      body: Center(
        child: Text('Demo'),
      ),
    );
  }
}
