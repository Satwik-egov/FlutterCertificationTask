// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'create_wage_seeker_reg_response.dart';

class CreateWageSeekerRegResponseMapper
    extends MapperBase<CreateWageSeekerRegResponse> {
  static MapperContainer container = MapperContainer(
    mappers: {CreateWageSeekerRegResponseMapper()},
  )..linkAll({StatsMapMapper.container});

  @override
  CreateWageSeekerRegResponseMapperElement createElement(
      MapperContainer container) {
    return CreateWageSeekerRegResponseMapperElement._(this, container);
  }

  @override
  String get id => 'CreateWageSeekerRegResponse';

  static final fromMap = container.fromMap<CreateWageSeekerRegResponse>;
  static final fromJson = container.fromJson<CreateWageSeekerRegResponse>;
}

class CreateWageSeekerRegResponseMapperElement
    extends MapperElementBase<CreateWageSeekerRegResponse> {
  CreateWageSeekerRegResponseMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  CreateWageSeekerRegResponse decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  CreateWageSeekerRegResponse fromMap(Map<String, dynamic> map) =>
      CreateWageSeekerRegResponse(statsMap: container.$getOpt(map, 'statsMap'));

  @override
  Function get encoder => encode;
  dynamic encode(CreateWageSeekerRegResponse v) => toMap(v);
  Map<String, dynamic> toMap(CreateWageSeekerRegResponse c) =>
      {'statsMap': container.$enc(c.statsMap, 'statsMap')};

  @override
  String stringify(CreateWageSeekerRegResponse self) =>
      'CreateWageSeekerRegResponse(statsMap: ${container.asString(self.statsMap)})';
  @override
  int hash(CreateWageSeekerRegResponse self) => container.hash(self.statsMap);
  @override
  bool equals(CreateWageSeekerRegResponse self,
          CreateWageSeekerRegResponse other) =>
      container.isEqual(self.statsMap, other.statsMap);
}

mixin CreateWageSeekerRegResponseMappable {
  String toJson() => CreateWageSeekerRegResponseMapper.container
      .toJson(this as CreateWageSeekerRegResponse);
  Map<String, dynamic> toMap() => CreateWageSeekerRegResponseMapper.container
      .toMap(this as CreateWageSeekerRegResponse);
  CreateWageSeekerRegResponseCopyWith<CreateWageSeekerRegResponse,
          CreateWageSeekerRegResponse, CreateWageSeekerRegResponse>
      get copyWith => _CreateWageSeekerRegResponseCopyWithImpl(
          this as CreateWageSeekerRegResponse, $identity, $identity);
  @override
  String toString() =>
      CreateWageSeekerRegResponseMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          CreateWageSeekerRegResponseMapper.container.isEqual(this, other));
  @override
  int get hashCode => CreateWageSeekerRegResponseMapper.container.hash(this);
}

extension CreateWageSeekerRegResponseValueCopy<$R,
        $Out extends CreateWageSeekerRegResponse>
    on ObjectCopyWith<$R, CreateWageSeekerRegResponse, $Out> {
  CreateWageSeekerRegResponseCopyWith<$R, CreateWageSeekerRegResponse, $Out>
      get asCreateWageSeekerRegResponse => base
          .as((v, t, t2) => _CreateWageSeekerRegResponseCopyWithImpl(v, t, t2));
}

typedef CreateWageSeekerRegResponseCopyWithBound = CreateWageSeekerRegResponse;

abstract class CreateWageSeekerRegResponseCopyWith<
        $R,
        $In extends CreateWageSeekerRegResponse,
        $Out extends CreateWageSeekerRegResponse>
    implements ObjectCopyWith<$R, $In, $Out> {
  CreateWageSeekerRegResponseCopyWith<$R2, $In, $Out2>
      chain<$R2, $Out2 extends CreateWageSeekerRegResponse>(
          Then<CreateWageSeekerRegResponse, $Out2> t, Then<$Out2, $R2> t2);
  StatsMapCopyWith<$R, StatsMap, StatsMap>? get statsMap;
  $R call({StatsMap? statsMap});
}

class _CreateWageSeekerRegResponseCopyWithImpl<$R,
        $Out extends CreateWageSeekerRegResponse>
    extends CopyWithBase<$R, CreateWageSeekerRegResponse, $Out>
    implements
        CreateWageSeekerRegResponseCopyWith<$R, CreateWageSeekerRegResponse,
            $Out> {
  _CreateWageSeekerRegResponseCopyWithImpl(
      super.value, super.then, super.then2);
  @override
  CreateWageSeekerRegResponseCopyWith<$R2, CreateWageSeekerRegResponse, $Out2>
      chain<$R2, $Out2 extends CreateWageSeekerRegResponse>(
              Then<CreateWageSeekerRegResponse, $Out2> t,
              Then<$Out2, $R2> t2) =>
          _CreateWageSeekerRegResponseCopyWithImpl($value, t, t2);

  @override
  StatsMapCopyWith<$R, StatsMap, StatsMap>? get statsMap =>
      $value.statsMap?.copyWith.chain($identity, (v) => call(statsMap: v));
  @override
  $R call({Object? statsMap = $none}) => $then(
      CreateWageSeekerRegResponse(statsMap: or(statsMap, $value.statsMap)));
}

class StatsMapMapper extends MapperBase<StatsMap> {
  static MapperContainer container = MapperContainer(
    mappers: {StatsMapMapper()},
  );

  @override
  StatsMapMapperElement createElement(MapperContainer container) {
    return StatsMapMapperElement._(this, container);
  }

  @override
  String get id => 'StatsMap';

  static final fromMap = container.fromMap<StatsMap>;
  static final fromJson = container.fromJson<StatsMap>;
}

class StatsMapMapperElement extends MapperElementBase<StatsMap> {
  StatsMapMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  StatsMap decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  StatsMap fromMap(Map<String, dynamic> map) => StatsMap(
      failedRecords: container.$getOpt(map, 'Failed Records'),
      successfulRecords: container.$getOpt(map, 'Successful Records'),
      totalRecords: container.$getOpt(map, 'Total Records'));

  @override
  Function get encoder => encode;
  dynamic encode(StatsMap v) => toMap(v);
  Map<String, dynamic> toMap(StatsMap s) => {
        'Failed Records': container.$enc(s.failedRecords, 'failedRecords'),
        'Successful Records':
            container.$enc(s.successfulRecords, 'successfulRecords'),
        'Total Records': container.$enc(s.totalRecords, 'totalRecords')
      };

  @override
  String stringify(StatsMap self) =>
      'StatsMap(successfulRecords: ${container.asString(self.successfulRecords)}, totalRecords: ${container.asString(self.totalRecords)}, failedRecords: ${container.asString(self.failedRecords)})';
  @override
  int hash(StatsMap self) =>
      container.hash(self.successfulRecords) ^
      container.hash(self.totalRecords) ^
      container.hash(self.failedRecords);
  @override
  bool equals(StatsMap self, StatsMap other) =>
      container.isEqual(self.successfulRecords, other.successfulRecords) &&
      container.isEqual(self.totalRecords, other.totalRecords) &&
      container.isEqual(self.failedRecords, other.failedRecords);
}

mixin StatsMapMappable {
  String toJson() => StatsMapMapper.container.toJson(this as StatsMap);
  Map<String, dynamic> toMap() =>
      StatsMapMapper.container.toMap(this as StatsMap);
  StatsMapCopyWith<StatsMap, StatsMap, StatsMap> get copyWith =>
      _StatsMapCopyWithImpl(this as StatsMap, $identity, $identity);
  @override
  String toString() => StatsMapMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          StatsMapMapper.container.isEqual(this, other));
  @override
  int get hashCode => StatsMapMapper.container.hash(this);
}

extension StatsMapValueCopy<$R, $Out extends StatsMap>
    on ObjectCopyWith<$R, StatsMap, $Out> {
  StatsMapCopyWith<$R, StatsMap, $Out> get asStatsMap =>
      base.as((v, t, t2) => _StatsMapCopyWithImpl(v, t, t2));
}

typedef StatsMapCopyWithBound = StatsMap;

abstract class StatsMapCopyWith<$R, $In extends StatsMap, $Out extends StatsMap>
    implements ObjectCopyWith<$R, $In, $Out> {
  StatsMapCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends StatsMap>(
      Then<StatsMap, $Out2> t, Then<$Out2, $R2> t2);
  $R call({int? failedRecords, int? successfulRecords, int? totalRecords});
}

class _StatsMapCopyWithImpl<$R, $Out extends StatsMap>
    extends CopyWithBase<$R, StatsMap, $Out>
    implements StatsMapCopyWith<$R, StatsMap, $Out> {
  _StatsMapCopyWithImpl(super.value, super.then, super.then2);
  @override
  StatsMapCopyWith<$R2, StatsMap, $Out2> chain<$R2, $Out2 extends StatsMap>(
          Then<StatsMap, $Out2> t, Then<$Out2, $R2> t2) =>
      _StatsMapCopyWithImpl($value, t, t2);

  @override
  $R call(
          {Object? failedRecords = $none,
          Object? successfulRecords = $none,
          Object? totalRecords = $none}) =>
      $then(StatsMap(
          failedRecords: or(failedRecords, $value.failedRecords),
          successfulRecords: or(successfulRecords, $value.successfulRecords),
          totalRecords: or(totalRecords, $value.totalRecords)));
}
