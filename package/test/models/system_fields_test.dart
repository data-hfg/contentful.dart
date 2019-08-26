import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('SystemFields Tests:', () {
    test('returns instance of SystemFields from json', () {
      final sys = SystemFields.fromJson(loadFixture('sys'));

      expect(sys, const TypeMatcher<SystemFields>());
    });

    test('returns json string from SystemFields', () {
      final sys = SystemFields.fromJson(loadFixture('sys'));

      final sysString = sys.toJson();

      expect(sysString, const TypeMatcher<String>());
    });
  });
}
