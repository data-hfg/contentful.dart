import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:intl/intl.dart';

final _dateFormatter = DateFormat('EEEE, MM/yyyy');
final _dayInMilliseconds = 86400000;

final _random = Random();
int _randomInt(int min, int max) => min + _random.nextInt(max - min);

String randomDateInThePast() {
  final now = DateTime.now();
  final randTime = _randomInt(1, 60) * _dayInMilliseconds;
  final date = DateTime.fromMillisecondsSinceEpoch(
      now.millisecondsSinceEpoch - randTime);
  return _dateFormatter.format(date);
}

String randomPostTitle() {
  return lorem(paragraphs: 1, words: 8);
}

List<String> randomTags() {
  final text = lorem(paragraphs: 1, words: _randomInt(2, 6));
  return text.split(' ');
}

String randomPostBody() {
  return lorem(paragraphs: _randomInt(1, 10), words: _randomInt(100, 300));
}

Size screenSize({@required BuildContext context}) {
  return MediaQuery.of(context).size;
}
