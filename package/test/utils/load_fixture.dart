import 'dart:io';

import 'package:built_value/built_value.dart';
import 'package:built_value_test/matcher.dart';
import 'package:matcher/matcher.dart';
import 'package:test/test.dart';

String loadFixture(String name) {
  final Map environmentVars = Platform.environment;
  final current = environmentVars['PWD'];
  return File('$current/test/fixtures/$name.json').readAsStringSync();
}

void expectMismatch(
    Object value, Built otherValue, String expectedMismatchMessage) {
  try {
    expect(value, equalsBuilt(otherValue));
  } on Error catch (exception) {
    expect(exception.toString(), contains(expectedMismatchMessage));
    return;
  }
  throw StateError('Expected mismatch.');
}
