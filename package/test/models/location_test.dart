import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('Location Tests', () {
    test('returns instance of Location from json', () {
      final location = Location.fromJson(loadFixture('location'));

      expect(location, const TypeMatcher<Location>());
    });

    test('returns json string from Location', () {
      final location = Location.fromJson(loadFixture('location'));

      final locationString = location.toJson();

      expect(locationString, const TypeMatcher<String>());
    });
  });
}
