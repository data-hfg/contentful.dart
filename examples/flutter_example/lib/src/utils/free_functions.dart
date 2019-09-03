import 'dart:math';

import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:intl/intl.dart';

final _dateFormatter = DateFormat('EEEE, MM/yyyy');
final _dayInMilliseconds = 86400000;

int _randomInt({int min = 0, int max = 10}) {
  final now = DateTime.now();
  final rnd2 = Random(now.millisecondsSinceEpoch);
  return min + rnd2.nextInt(max - min);
}

String randomDateInThePast() {
  final now = DateTime.now();
  final randTime = _randomInt(min: 1, max: 60) * _dayInMilliseconds;
  final date = DateTime.fromMillisecondsSinceEpoch(
      now.millisecondsSinceEpoch - randTime);
  return _dateFormatter.format(date);
}

String randomPostTitle() {
  return lorem(paragraphs: 1, words: 8);
}
