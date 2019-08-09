import 'dart:io';

String loadFixture(String name) {
  final Map environmentVars = Platform.environment;
  final current = environmentVars["PWD"];
  return File('$current/test/data/fixtures/$name.json').readAsStringSync();
}
