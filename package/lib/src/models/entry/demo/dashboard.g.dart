// GENERATED CODE - DO NOT MODIFY BY HAND

part of dashboard;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Dashboard> _$dashboardSerializer = new _$DashboardSerializer();

class _$DashboardSerializer implements StructuredSerializer<Dashboard> {
  @override
  final Iterable<Type> types = const [Dashboard, _$Dashboard];
  @override
  final String wireName = 'Dashboard';

  @override
  Iterable<Object> serialize(Serializers serializers, Dashboard object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'entity',
      serializers.serialize(object.entity, specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'defaultRoomDashboard',
      serializers.serialize(object.defaultRoomDashboard,
          specifiedType: const FullType(bool)),
      'external',
      serializers.serialize(object.external,
          specifiedType: const FullType(bool)),
      'publicUrlKey',
      serializers.serialize(object.publicUrlKey,
          specifiedType: const FullType(String)),
      'subscriptionRequired',
      serializers.serialize(object.subscriptionRequired,
          specifiedType: const FullType(bool)),
      'container',
      serializers.serialize(object.container,
          specifiedType: const FullType(int)),
      'containerName',
      serializers.serialize(object.containerName,
          specifiedType: const FullType(String)),
      'tiles',
      serializers.serialize(object.tiles,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(Tile)])),
    ];

    return result;
  }

  @override
  Dashboard deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DashboardBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'entity':
          result.entity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'defaultRoomDashboard':
          result.defaultRoomDashboard = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'external':
          result.external = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'publicUrlKey':
          result.publicUrlKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subscriptionRequired':
          result.subscriptionRequired = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'container':
          result.container = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'containerName':
          result.containerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tiles':
          result.tiles.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltSet, const [const FullType(Tile)]))
              as BuiltSet<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$Dashboard extends Dashboard {
  @override
  final int entity;
  @override
  final int id;
  @override
  final String name;
  @override
  final bool defaultRoomDashboard;
  @override
  final bool external;
  @override
  final String publicUrlKey;
  @override
  final bool subscriptionRequired;
  @override
  final int container;
  @override
  final String containerName;
  @override
  final BuiltSet<Tile> tiles;

  factory _$Dashboard([void Function(DashboardBuilder) updates]) =>
      (new DashboardBuilder()..update(updates)).build();

  _$Dashboard._(
      {this.entity,
      this.id,
      this.name,
      this.defaultRoomDashboard,
      this.external,
      this.publicUrlKey,
      this.subscriptionRequired,
      this.container,
      this.containerName,
      this.tiles})
      : super._() {
    if (entity == null) {
      throw new BuiltValueNullFieldError('Dashboard', 'entity');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('Dashboard', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Dashboard', 'name');
    }
    if (defaultRoomDashboard == null) {
      throw new BuiltValueNullFieldError('Dashboard', 'defaultRoomDashboard');
    }
    if (external == null) {
      throw new BuiltValueNullFieldError('Dashboard', 'external');
    }
    if (publicUrlKey == null) {
      throw new BuiltValueNullFieldError('Dashboard', 'publicUrlKey');
    }
    if (subscriptionRequired == null) {
      throw new BuiltValueNullFieldError('Dashboard', 'subscriptionRequired');
    }
    if (container == null) {
      throw new BuiltValueNullFieldError('Dashboard', 'container');
    }
    if (containerName == null) {
      throw new BuiltValueNullFieldError('Dashboard', 'containerName');
    }
    if (tiles == null) {
      throw new BuiltValueNullFieldError('Dashboard', 'tiles');
    }
  }

  @override
  Dashboard rebuild(void Function(DashboardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardBuilder toBuilder() => new DashboardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Dashboard &&
        entity == other.entity &&
        id == other.id &&
        name == other.name &&
        defaultRoomDashboard == other.defaultRoomDashboard &&
        external == other.external &&
        publicUrlKey == other.publicUrlKey &&
        subscriptionRequired == other.subscriptionRequired &&
        container == other.container &&
        containerName == other.containerName &&
        tiles == other.tiles;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, entity.hashCode), id.hashCode),
                                    name.hashCode),
                                defaultRoomDashboard.hashCode),
                            external.hashCode),
                        publicUrlKey.hashCode),
                    subscriptionRequired.hashCode),
                container.hashCode),
            containerName.hashCode),
        tiles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Dashboard')
          ..add('entity', entity)
          ..add('id', id)
          ..add('name', name)
          ..add('defaultRoomDashboard', defaultRoomDashboard)
          ..add('external', external)
          ..add('publicUrlKey', publicUrlKey)
          ..add('subscriptionRequired', subscriptionRequired)
          ..add('container', container)
          ..add('containerName', containerName)
          ..add('tiles', tiles))
        .toString();
  }
}

class DashboardBuilder implements Builder<Dashboard, DashboardBuilder> {
  _$Dashboard _$v;

  int _entity;
  int get entity => _$this._entity;
  set entity(int entity) => _$this._entity = entity;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  bool _defaultRoomDashboard;
  bool get defaultRoomDashboard => _$this._defaultRoomDashboard;
  set defaultRoomDashboard(bool defaultRoomDashboard) =>
      _$this._defaultRoomDashboard = defaultRoomDashboard;

  bool _external;
  bool get external => _$this._external;
  set external(bool external) => _$this._external = external;

  String _publicUrlKey;
  String get publicUrlKey => _$this._publicUrlKey;
  set publicUrlKey(String publicUrlKey) => _$this._publicUrlKey = publicUrlKey;

  bool _subscriptionRequired;
  bool get subscriptionRequired => _$this._subscriptionRequired;
  set subscriptionRequired(bool subscriptionRequired) =>
      _$this._subscriptionRequired = subscriptionRequired;

  int _container;
  int get container => _$this._container;
  set container(int container) => _$this._container = container;

  String _containerName;
  String get containerName => _$this._containerName;
  set containerName(String containerName) =>
      _$this._containerName = containerName;

  SetBuilder<Tile> _tiles;
  SetBuilder<Tile> get tiles => _$this._tiles ??= new SetBuilder<Tile>();
  set tiles(SetBuilder<Tile> tiles) => _$this._tiles = tiles;

  DashboardBuilder();

  DashboardBuilder get _$this {
    if (_$v != null) {
      _entity = _$v.entity;
      _id = _$v.id;
      _name = _$v.name;
      _defaultRoomDashboard = _$v.defaultRoomDashboard;
      _external = _$v.external;
      _publicUrlKey = _$v.publicUrlKey;
      _subscriptionRequired = _$v.subscriptionRequired;
      _container = _$v.container;
      _containerName = _$v.containerName;
      _tiles = _$v.tiles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Dashboard other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Dashboard;
  }

  @override
  void update(void Function(DashboardBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Dashboard build() {
    _$Dashboard _$result;
    try {
      _$result = _$v ??
          new _$Dashboard._(
              entity: entity,
              id: id,
              name: name,
              defaultRoomDashboard: defaultRoomDashboard,
              external: external,
              publicUrlKey: publicUrlKey,
              subscriptionRequired: subscriptionRequired,
              container: container,
              containerName: containerName,
              tiles: tiles.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tiles';
        tiles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Dashboard', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
