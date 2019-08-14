class IncludesMap {
  final Map<String, Map<String, Map<String, dynamic>>> _map;

  IncludesMap(this._map);

  factory IncludesMap.fromJson(Map<String, dynamic> json) {
    final map = {};

    json.forEach((type, json) {
      if (map[type] == null) map[type] = {};
      final list = json as List<dynamic>;
      for (final json in list) {
        final entry = json as Map<String, dynamic>;
        map[type][entry['sys']['id']] = entry;
      }
    });

    return IncludesMap(map);
  }

  Map<String, dynamic> resolveLink(Map<String, dynamic> link) {
    final String type = link['sys']['linkType'];
    final String id = link['sys']['id'];
    if (_map[type] == null || _map[type][id] == null) return link;
    return _map[type][id];
  }
}
