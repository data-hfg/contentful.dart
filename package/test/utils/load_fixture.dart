import 'dart:io';

String loadFixture(String name) {
  final Map environmentVars = Platform.environment;
  final current = environmentVars['PWD'];
  return File('$current/test/fixtures/$name.json').readAsStringSync();
}
