import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('Location Tests', () {
    test('returns Location from json string', () {
      final location = Space.fromJson(loadFixture('location'));
      final locationString = location.toJson();

      expect(locationString, const TypeMatcher<String>());
    });
  });
}
