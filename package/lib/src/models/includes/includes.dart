import 'package:contentful_dart/src/models/models.dart';

class Includes {
  final IncludesMap map;

  Includes(this.map);
  factory Includes.fromJson(Map<String, dynamic> json) {
    final map = IncludesMap.fromJson(json);

    return Includes(map);
  }

  List<Map<String, dynamic>> resolveLinks(List<dynamic> items) {
    return items.map((item) => _walkMap(item)).toList();
  }

  bool _isLink(Map<String, dynamic> entry) {
    return entry['sys'] != null && entry['sys']['type'] == 'Link';
  }

  Map<String, dynamic> _walkMap(Map<String, dynamic> entry) {
    if (_isLink(entry)) {
      final resolved = map.resolveLink(entry);
      return _isLink(resolved) ? entry : _walkMap(resolved);
    } else if (entry['fields'] == null) return entry;

    final fields = entry['fields'] as Map<String, dynamic>;
    entry['fields'] = fields.map((key, fieldJson) {
      if (fieldJson is List) {
        return MapEntry<String, dynamic>(
          key,
          resolveLinks(fieldJson),
        );
      } else if (fieldJson is Map && _isLink(fieldJson)) {
        return MapEntry<String, dynamic>(
          key,
          _walkMap(map.resolveLink(fieldJson)),
        );
      }
      return MapEntry<String, dynamic>(key, fieldJson);
    });
    return entry;
  }
}
