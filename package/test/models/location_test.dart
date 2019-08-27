import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';
import 'package:built_value_test/matcher.dart';

import '../utils/load_fixture.dart';

void main() {
  group('Location Tests:', () {
    test('returns instance of Location from json', () {
      final location = Location.fromJson(loadFixture('location'));

      expect(location, const TypeMatcher<Location>());
    });

    test('returns json string from Location', () {
      final location = Location.fromJson(loadFixture('location'));

      final locationString = location.toJson();

      expect(locationString, const TypeMatcher<String>());
    });

    test('built_value matcher', () {
      final value = Location(
        (b) => b
          ..latitude = 12.01
          ..longitude = 22.34,
      );
      expect(value, equalsBuilt(value));
    });

    test('compared value matcher', () {
      final value = Location(
        (b) => b
          ..latitude = 12.01
          ..longitude = 22.34,
      );

      final otherValue = Location(
        (b) => b
          ..latitude = 12.01
          ..longitude = 22.34,
      );

      expect(value, otherValue);
    });

    test('reports if not same', () {
      final value = Location(
        (b) => b
          ..latitude = 12.01
          ..longitude = 22.34,
      );

      final otherValue = value.rebuild((b) => b..latitude = 5);

      expectMismatch(value, otherValue, '');
    });
  });
}
