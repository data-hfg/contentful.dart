import 'package:built_value_test/matcher.dart';
import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('AssetFileDetails Tests:', () {
    test('returns instance of AssetFileDetails from json', () {
      final assetFileDetails =
          AssetFileDetails.fromJson(loadFixture('asset_file_details'));

      expect(assetFileDetails, const TypeMatcher<AssetFileDetails>());
    });

    test('returns json string from AssetFileDetails', () {
      final assetFileDetails =
          AssetFileDetails.fromJson(loadFixture('asset_file_details'));

      final assetFileDetailsString = assetFileDetails.toJson();

      expect(assetFileDetailsString, const TypeMatcher<String>());
    });

    test('built_value matcher', () {
      final value = AssetFileDetails(
        (b) => b
          ..image = AssetFileDetailsImage(
            (b) => b
              ..height = 100
              ..width = 200,
          ).toBuilder()
          ..size = 200,
      );
      expect(value, equalsBuilt(value));
    });

    test('compared value matcher', () {
      final value = AssetFileDetails(
        (b) => b
          ..image = AssetFileDetailsImage(
            (b) => b
              ..height = 100
              ..width = 200,
          ).toBuilder()
          ..size = 200,
      );

      final otherValue = AssetFileDetails(
        (b) => b
          ..image = AssetFileDetailsImage(
            (b) => b
              ..height = 100
              ..width = 200,
          ).toBuilder()
          ..size = 200,
      );

      expect(value, otherValue);
    });

    test('reports if not same', () {
      final value = AssetFileDetails(
        (b) => b
          ..image = AssetFileDetailsImage(
            (b) => b
              ..height = 100
              ..width = 200,
          ).toBuilder()
          ..size = 200,
      );

      final otherValue = value.rebuild((b) => b..size = 198765);

      expectMismatch(value, otherValue, '');
    });
  });
}
