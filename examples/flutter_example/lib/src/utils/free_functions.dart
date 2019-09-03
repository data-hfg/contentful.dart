import 'dart:math';

import 'package:intl/intl.dart';

final _dateFormatter = DateFormat('EEEE, MM/yyyy');
final _dayInMilliseconds = 86400000;

final _min = 1;
final _max = 50;

int _randomInt() {
  final now = DateTime.now();
  final rnd2 = Random(now.millisecondsSinceEpoch);
  return _min + rnd2.nextInt(_max - _min);
}

String randomDateInThePast() {
  final now = DateTime.now();
  final randTime = _randomInt() * _dayInMilliseconds;
  final date = DateTime.fromMillisecondsSinceEpoch(
      now.millisecondsSinceEpoch - randTime);
  return _dateFormatter.format(date);
}
