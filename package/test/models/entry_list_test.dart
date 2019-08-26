import 'package:contentful_dart/contentful_dart.dart';
import 'package:test/test.dart';

import '../utils/load_fixture.dart';

void main() {
  group('EntryList Tests', () {
    test('returns instance of EntryList from json', () {
      final entryList = EntryList.fromJson(loadFixture('entries'));

      expect(entryList, const TypeMatcher<EntryList>());
    });

    test('returns json string from EntryList', () {
      final entryList = EntryList.fromJson(loadFixture('entries'));

      final entryListString = entryList.toJson();

      expect(entryListString, const TypeMatcher<String>());
    });
  });
}
