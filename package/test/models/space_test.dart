import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('Space Tests:', () {
    test('returns instance of Space from json', () {
      final space = Space.fromJson(loadFixture('space'));

      expect(space, const TypeMatcher<Space>());
    });

    test('returns json string from Space', () {
      final space = Space.fromJson(loadFixture('space'));

      final spaceString = space.toJson();

      expect(spaceString, const TypeMatcher<String>());
    });
  });
}
