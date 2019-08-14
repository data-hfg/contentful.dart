import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('SystemFields', () {
    test('returns SystemFields from json string', () {
      final sys = SystemFields.fromJson(loadFixture('sys'));
      final sysString = sys.toJson();

      expect(sysString, const TypeMatcher<String>());
    });
  });
}
