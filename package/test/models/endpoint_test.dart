import 'package:built_collection/built_collection.dart';
import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

void main() {
  group('Endpoint Tests', () {
    test('returns instance of Endpoint for field spaces', () {
      final endpointSpace = Endpoint.spaces;

      expect(endpointSpace, const TypeMatcher<Endpoint>());
    });

    test('returns instance of Endpoint for field contentTypes', () {
      final endpointContentTypes = Endpoint.contentTypes;

      expect(endpointContentTypes, const TypeMatcher<Endpoint>());
    });

    test('returns instance of Endpoint for field entries', () {
      final endpointEntries = Endpoint.entries;

      expect(endpointEntries, const TypeMatcher<Endpoint>());
    });

    test('returns instance of Endpoint for field assets', () {
      final endpointAssets = Endpoint.assets;

      expect(endpointAssets, const TypeMatcher<Endpoint>());
    });

    test('returns instance of Endpoint for field sync', () {
      final endpointSync = Endpoint.sync;

      expect(endpointSync, const TypeMatcher<Endpoint>());
    });

    test('returns instance of Endpoint for field locales', () {
      final endpointLocales = Endpoint.locales;

      expect(endpointLocales, const TypeMatcher<Endpoint>());
    });

    test('returns all values of Endpoint', () {
      final values = Endpoint.values;

      expect(values, const TypeMatcher<BuiltSet<Endpoint>>());
    });

    test('returns value of Endpoint', () {
      final values = Endpoint.valueOf('contentTypes');

      expect(values, const TypeMatcher<Endpoint>());
    });
  });
}
