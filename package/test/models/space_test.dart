import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('Space Tests', () {
    test('returns Space from json string', () {
      final space = Space.fromJson(loadFixture('space'));
      final spaceString = space.toJson();

      expect(spaceString, const TypeMatcher<String>());
    });
  });
}
