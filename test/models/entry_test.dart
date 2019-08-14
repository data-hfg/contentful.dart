import 'package:contentful_dart/contentful.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('Entry Tests', () {
    test('returns Entry from json string', () {
      final entry = Locale.fromJson(loadFixture('entry_with_location'));
      final entryString = entry.toJson();

      expect(entryString, const TypeMatcher<String>());
    });
  });
}
