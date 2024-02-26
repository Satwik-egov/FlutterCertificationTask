// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'wage_seeker_details.dart';

class WageSeekersContainerMapper extends MapperBase<WageSeekersContainer> {
  static MapperContainer container = MapperContainer(
    mappers: {WageSeekersContainerMapper()},
  )..linkAll({IndividualDetMapper.container});

  @override
  WageSeekersContainerMapperElement createElement(MapperContainer container) {
    return WageSeekersContainerMapperElement._(this, container);
  }

  @override
  String get id => 'WageSeekersContainer';

  static final fromMap = container.fromMap<WageSeekersContainer>;
  static final fromJson = container.fromJson<WageSeekersContainer>;
}

class WageSeekersContainerMapperElement
    extends MapperElementBase<WageSeekersContainer> {
  WageSeekersContainerMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  WageSeekersContainer decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  WageSeekersContainer fromMap(Map<String, dynamic> map) =>
      WageSeekersContainer(Individual: container.$get(map, 'Individual'));

  @override
  Function get encoder => encode;
  dynamic encode(WageSeekersContainer v) => toMap(v);
  Map<String, dynamic> toMap(WageSeekersContainer w) =>
      {'Individual': container.$enc(w.Individual, 'Individual')};

  @override
  String stringify(WageSeekersContainer self) =>
      'WageSeekersContainer(Individual: ${container.asString(self.Individual)})';
  @override
  int hash(WageSeekersContainer self) => container.hash(self.Individual);
  @override
  bool equals(WageSeekersContainer self, WageSeekersContainer other) =>
      container.isEqual(self.Individual, other.Individual);
}

mixin WageSeekersContainerMappable {
  String toJson() =>
      WageSeekersContainerMapper.container.toJson(this as WageSeekersContainer);
  Map<String, dynamic> toMap() =>
      WageSeekersContainerMapper.container.toMap(this as WageSeekersContainer);
  WageSeekersContainerCopyWith<WageSeekersContainer, WageSeekersContainer,
          WageSeekersContainer>
      get copyWith => _WageSeekersContainerCopyWithImpl(
          this as WageSeekersContainer, $identity, $identity);
  @override
  String toString() => WageSeekersContainerMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          WageSeekersContainerMapper.container.isEqual(this, other));
  @override
  int get hashCode => WageSeekersContainerMapper.container.hash(this);
}

extension WageSeekersContainerValueCopy<$R, $Out extends WageSeekersContainer>
    on ObjectCopyWith<$R, WageSeekersContainer, $Out> {
  WageSeekersContainerCopyWith<$R, WageSeekersContainer, $Out>
      get asWageSeekersContainer =>
          base.as((v, t, t2) => _WageSeekersContainerCopyWithImpl(v, t, t2));
}

typedef WageSeekersContainerCopyWithBound = WageSeekersContainer;

abstract class WageSeekersContainerCopyWith<$R,
        $In extends WageSeekersContainer, $Out extends WageSeekersContainer>
    implements ObjectCopyWith<$R, $In, $Out> {
  WageSeekersContainerCopyWith<$R2, $In, $Out2>
      chain<$R2, $Out2 extends WageSeekersContainer>(
          Then<WageSeekersContainer, $Out2> t, Then<$Out2, $R2> t2);
  IndividualDetCopyWith<$R, IndividualDet, IndividualDet> get Individual;
  $R call({IndividualDet? Individual});
}

class _WageSeekersContainerCopyWithImpl<$R, $Out extends WageSeekersContainer>
    extends CopyWithBase<$R, WageSeekersContainer, $Out>
    implements WageSeekersContainerCopyWith<$R, WageSeekersContainer, $Out> {
  _WageSeekersContainerCopyWithImpl(super.value, super.then, super.then2);
  @override
  WageSeekersContainerCopyWith<$R2, WageSeekersContainer, $Out2>
      chain<$R2, $Out2 extends WageSeekersContainer>(
              Then<WageSeekersContainer, $Out2> t, Then<$Out2, $R2> t2) =>
          _WageSeekersContainerCopyWithImpl($value, t, t2);

  @override
  IndividualDetCopyWith<$R, IndividualDet, IndividualDet> get Individual =>
      $value.Individual.copyWith.chain($identity, (v) => call(Individual: v));
  @override
  $R call({IndividualDet? Individual}) =>
      $then(WageSeekersContainer(Individual: Individual ?? $value.Individual));
}

class IndividualDetMapper extends MapperBase<IndividualDet> {
  static MapperContainer container = MapperContainer(
    mappers: {IndividualDetMapper()},
  )..linkAll({
      WageSeekerAddressMapper.container,
      NameMapper.container,
      AdditionalFieldsMapper.container,
    });

  @override
  IndividualDetMapperElement createElement(MapperContainer container) {
    return IndividualDetMapperElement._(this, container);
  }

  @override
  String get id => 'IndividualDet';

  static final fromMap = container.fromMap<IndividualDet>;
  static final fromJson = container.fromJson<IndividualDet>;
}

class IndividualDetMapperElement extends MapperElementBase<IndividualDet> {
  IndividualDetMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  IndividualDet decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  IndividualDet fromMap(Map<String, dynamic> map) => IndividualDet(
      tenantId: container.$getOpt(map, 'tenantId'),
      address: container.$getOpt(map, 'address'),
      aadharNo: container.$getOpt(map, 'aadharNo'),
      name: container.$getOpt(map, 'name'),
      guardianName: container.$getOpt(map, 'guardianName'),
      relationship: container.$getOpt(map, 'relationship'),
      dateofbirthepoch: container.$getOpt(map, 'dateofbirthepoch'),
      gender: container.$getOpt(map, 'gender'),
      additionalFields: container.$getOpt(map, 'additionalFields'),
      mobileNumber: container.$getOpt(map, 'mobileNumber'),
      skills: container.$getOpt(map, 'skills'));

  @override
  Function get encoder => encode;
  dynamic encode(IndividualDet v) => toMap(v);
  Map<String, dynamic> toMap(IndividualDet i) => {
        'tenantId': container.$enc(i.tenantId, 'tenantId'),
        'address': container.$enc(i.address, 'address'),
        'aadharNo': container.$enc(i.aadharNo, 'aadharNo'),
        'name': container.$enc(i.name, 'name'),
        'guardianName': container.$enc(i.guardianName, 'guardianName'),
        'relationship': container.$enc(i.relationship, 'relationship'),
        'dateofbirthepoch':
            container.$enc(i.dateofbirthepoch, 'dateofbirthepoch'),
        'gender': container.$enc(i.gender, 'gender'),
        'additionalFields':
            container.$enc(i.additionalFields, 'additionalFields'),
        'mobileNumber': container.$enc(i.mobileNumber, 'mobileNumber'),
        'skills': container.$enc(i.skills, 'skills')
      };

  @override
  String stringify(IndividualDet self) =>
      'IndividualDet(tenantId: ${container.asString(self.tenantId)}, address: ${container.asString(self.address)}, aadharNo: ${container.asString(self.aadharNo)}, name: ${container.asString(self.name)}, guardianName: ${container.asString(self.guardianName)}, relationship: ${container.asString(self.relationship)}, dateofbirthepoch: ${container.asString(self.dateofbirthepoch)}, gender: ${container.asString(self.gender)}, additionalFields: ${container.asString(self.additionalFields)}, mobileNumber: ${container.asString(self.mobileNumber)}, skills: ${container.asString(self.skills)})';
  @override
  int hash(IndividualDet self) =>
      container.hash(self.tenantId) ^
      container.hash(self.address) ^
      container.hash(self.aadharNo) ^
      container.hash(self.name) ^
      container.hash(self.guardianName) ^
      container.hash(self.relationship) ^
      container.hash(self.dateofbirthepoch) ^
      container.hash(self.gender) ^
      container.hash(self.additionalFields) ^
      container.hash(self.mobileNumber) ^
      container.hash(self.skills);
  @override
  bool equals(IndividualDet self, IndividualDet other) =>
      container.isEqual(self.tenantId, other.tenantId) &&
      container.isEqual(self.address, other.address) &&
      container.isEqual(self.aadharNo, other.aadharNo) &&
      container.isEqual(self.name, other.name) &&
      container.isEqual(self.guardianName, other.guardianName) &&
      container.isEqual(self.relationship, other.relationship) &&
      container.isEqual(self.dateofbirthepoch, other.dateofbirthepoch) &&
      container.isEqual(self.gender, other.gender) &&
      container.isEqual(self.additionalFields, other.additionalFields) &&
      container.isEqual(self.mobileNumber, other.mobileNumber) &&
      container.isEqual(self.skills, other.skills);
}

mixin IndividualDetMappable {
  String toJson() =>
      IndividualDetMapper.container.toJson(this as IndividualDet);
  Map<String, dynamic> toMap() =>
      IndividualDetMapper.container.toMap(this as IndividualDet);
  IndividualDetCopyWith<IndividualDet, IndividualDet, IndividualDet>
      get copyWith => _IndividualDetCopyWithImpl(
          this as IndividualDet, $identity, $identity);
  @override
  String toString() => IndividualDetMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          IndividualDetMapper.container.isEqual(this, other));
  @override
  int get hashCode => IndividualDetMapper.container.hash(this);
}

extension IndividualDetValueCopy<$R, $Out extends IndividualDet>
    on ObjectCopyWith<$R, IndividualDet, $Out> {
  IndividualDetCopyWith<$R, IndividualDet, $Out> get asIndividualDet =>
      base.as((v, t, t2) => _IndividualDetCopyWithImpl(v, t, t2));
}

typedef IndividualDetCopyWithBound = IndividualDet;

abstract class IndividualDetCopyWith<$R, $In extends IndividualDet,
    $Out extends IndividualDet> implements ObjectCopyWith<$R, $In, $Out> {
  IndividualDetCopyWith<$R2, $In, $Out2>
      chain<$R2, $Out2 extends IndividualDet>(
          Then<IndividualDet, $Out2> t, Then<$Out2, $R2> t2);
  ListCopyWith<$R, WageSeekerAddress,
          WageSeekerAddressCopyWith<$R, WageSeekerAddress, WageSeekerAddress>>?
      get address;
  NameCopyWith<$R, Name, Name>? get name;
  AdditionalFieldsCopyWith<$R, AdditionalFields, AdditionalFields>?
      get additionalFields;
  $R call(
      {String? tenantId,
      List<WageSeekerAddress>? address,
      String? aadharNo,
      Name? name,
      String? guardianName,
      String? relationship,
      int? dateofbirthepoch,
      String? gender,
      AdditionalFields? additionalFields,
      String? mobileNumber,
      String? skills});
}

class _IndividualDetCopyWithImpl<$R, $Out extends IndividualDet>
    extends CopyWithBase<$R, IndividualDet, $Out>
    implements IndividualDetCopyWith<$R, IndividualDet, $Out> {
  _IndividualDetCopyWithImpl(super.value, super.then, super.then2);
  @override
  IndividualDetCopyWith<$R2, IndividualDet, $Out2>
      chain<$R2, $Out2 extends IndividualDet>(
              Then<IndividualDet, $Out2> t, Then<$Out2, $R2> t2) =>
          _IndividualDetCopyWithImpl($value, t, t2);

  @override
  ListCopyWith<$R, WageSeekerAddress,
          WageSeekerAddressCopyWith<$R, WageSeekerAddress, WageSeekerAddress>>?
      get address => $value.address != null
          ? ListCopyWith(
              $value.address!,
              (v, t) => v.copyWith.chain<$R, WageSeekerAddress>($identity, t),
              (v) => call(address: v))
          : null;
  @override
  NameCopyWith<$R, Name, Name>? get name =>
      $value.name?.copyWith.chain($identity, (v) => call(name: v));
  @override
  AdditionalFieldsCopyWith<$R, AdditionalFields, AdditionalFields>?
      get additionalFields => $value.additionalFields?.copyWith
          .chain($identity, (v) => call(additionalFields: v));
  @override
  $R call(
          {Object? tenantId = $none,
          Object? address = $none,
          Object? aadharNo = $none,
          Object? name = $none,
          Object? guardianName = $none,
          Object? relationship = $none,
          Object? dateofbirthepoch = $none,
          Object? gender = $none,
          Object? additionalFields = $none,
          Object? mobileNumber = $none,
          Object? skills = $none}) =>
      $then(IndividualDet(
          tenantId: or(tenantId, $value.tenantId),
          address: or(address, $value.address),
          aadharNo: or(aadharNo, $value.aadharNo),
          name: or(name, $value.name),
          guardianName: or(guardianName, $value.guardianName),
          relationship: or(relationship, $value.relationship),
          dateofbirthepoch: or(dateofbirthepoch, $value.dateofbirthepoch),
          gender: or(gender, $value.gender),
          additionalFields: or(additionalFields, $value.additionalFields),
          mobileNumber: or(mobileNumber, $value.mobileNumber),
          skills: or(skills, $value.skills)));
}

class AdditionalFieldsMapper extends MapperBase<AdditionalFields> {
  static MapperContainer container = MapperContainer(
    mappers: {AdditionalFieldsMapper()},
  )..linkAll({FieldsMapper.container});

  @override
  AdditionalFieldsMapperElement createElement(MapperContainer container) {
    return AdditionalFieldsMapperElement._(this, container);
  }

  @override
  String get id => 'AdditionalFields';

  static final fromMap = container.fromMap<AdditionalFields>;
  static final fromJson = container.fromJson<AdditionalFields>;
}

class AdditionalFieldsMapperElement
    extends MapperElementBase<AdditionalFields> {
  AdditionalFieldsMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  AdditionalFields decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  AdditionalFields fromMap(Map<String, dynamic> map) =>
      AdditionalFields(fields: container.$getOpt(map, 'fields'));

  @override
  Function get encoder => encode;
  dynamic encode(AdditionalFields v) => toMap(v);
  Map<String, dynamic> toMap(AdditionalFields a) =>
      {'fields': container.$enc(a.fields, 'fields')};

  @override
  String stringify(AdditionalFields self) =>
      'AdditionalFields(fields: ${container.asString(self.fields)})';
  @override
  int hash(AdditionalFields self) => container.hash(self.fields);
  @override
  bool equals(AdditionalFields self, AdditionalFields other) =>
      container.isEqual(self.fields, other.fields);
}

mixin AdditionalFieldsMappable {
  String toJson() =>
      AdditionalFieldsMapper.container.toJson(this as AdditionalFields);
  Map<String, dynamic> toMap() =>
      AdditionalFieldsMapper.container.toMap(this as AdditionalFields);
  AdditionalFieldsCopyWith<AdditionalFields, AdditionalFields, AdditionalFields>
      get copyWith => _AdditionalFieldsCopyWithImpl(
          this as AdditionalFields, $identity, $identity);
  @override
  String toString() => AdditionalFieldsMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          AdditionalFieldsMapper.container.isEqual(this, other));
  @override
  int get hashCode => AdditionalFieldsMapper.container.hash(this);
}

extension AdditionalFieldsValueCopy<$R, $Out extends AdditionalFields>
    on ObjectCopyWith<$R, AdditionalFields, $Out> {
  AdditionalFieldsCopyWith<$R, AdditionalFields, $Out> get asAdditionalFields =>
      base.as((v, t, t2) => _AdditionalFieldsCopyWithImpl(v, t, t2));
}

typedef AdditionalFieldsCopyWithBound = AdditionalFields;

abstract class AdditionalFieldsCopyWith<$R, $In extends AdditionalFields,
    $Out extends AdditionalFields> implements ObjectCopyWith<$R, $In, $Out> {
  AdditionalFieldsCopyWith<$R2, $In, $Out2>
      chain<$R2, $Out2 extends AdditionalFields>(
          Then<AdditionalFields, $Out2> t, Then<$Out2, $R2> t2);
  ListCopyWith<$R, Fields, FieldsCopyWith<$R, Fields, Fields>>? get fields;
  $R call({List<Fields>? fields});
}

class _AdditionalFieldsCopyWithImpl<$R, $Out extends AdditionalFields>
    extends CopyWithBase<$R, AdditionalFields, $Out>
    implements AdditionalFieldsCopyWith<$R, AdditionalFields, $Out> {
  _AdditionalFieldsCopyWithImpl(super.value, super.then, super.then2);
  @override
  AdditionalFieldsCopyWith<$R2, AdditionalFields, $Out2>
      chain<$R2, $Out2 extends AdditionalFields>(
              Then<AdditionalFields, $Out2> t, Then<$Out2, $R2> t2) =>
          _AdditionalFieldsCopyWithImpl($value, t, t2);

  @override
  ListCopyWith<$R, Fields, FieldsCopyWith<$R, Fields, Fields>>? get fields =>
      $value.fields != null
          ? ListCopyWith(
              $value.fields!,
              (v, t) => v.copyWith.chain<$R, Fields>($identity, t),
              (v) => call(fields: v))
          : null;
  @override
  $R call({Object? fields = $none}) =>
      $then(AdditionalFields(fields: or(fields, $value.fields)));
}

class FieldsMapper extends MapperBase<Fields> {
  static MapperContainer container = MapperContainer(
    mappers: {FieldsMapper()},
  );

  @override
  FieldsMapperElement createElement(MapperContainer container) {
    return FieldsMapperElement._(this, container);
  }

  @override
  String get id => 'Fields';

  static final fromMap = container.fromMap<Fields>;
  static final fromJson = container.fromJson<Fields>;
}

class FieldsMapperElement extends MapperElementBase<Fields> {
  FieldsMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  Fields decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  Fields fromMap(Map<String, dynamic> map) => Fields(
      key: container.$getOpt(map, 'key'),
      value: container.$getOpt(map, 'value'));

  @override
  Function get encoder => encode;
  dynamic encode(Fields v) => toMap(v);
  Map<String, dynamic> toMap(Fields f) => {
        'key': container.$enc(f.key, 'key'),
        'value': container.$enc(f.value, 'value')
      };

  @override
  String stringify(Fields self) =>
      'Fields(key: ${container.asString(self.key)}, value: ${container.asString(self.value)})';
  @override
  int hash(Fields self) =>
      container.hash(self.key) ^ container.hash(self.value);
  @override
  bool equals(Fields self, Fields other) =>
      container.isEqual(self.key, other.key) &&
      container.isEqual(self.value, other.value);
}

mixin FieldsMappable {
  String toJson() => FieldsMapper.container.toJson(this as Fields);
  Map<String, dynamic> toMap() => FieldsMapper.container.toMap(this as Fields);
  FieldsCopyWith<Fields, Fields, Fields> get copyWith =>
      _FieldsCopyWithImpl(this as Fields, $identity, $identity);
  @override
  String toString() => FieldsMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          FieldsMapper.container.isEqual(this, other));
  @override
  int get hashCode => FieldsMapper.container.hash(this);
}

extension FieldsValueCopy<$R, $Out extends Fields>
    on ObjectCopyWith<$R, Fields, $Out> {
  FieldsCopyWith<$R, Fields, $Out> get asFields =>
      base.as((v, t, t2) => _FieldsCopyWithImpl(v, t, t2));
}

typedef FieldsCopyWithBound = Fields;

abstract class FieldsCopyWith<$R, $In extends Fields, $Out extends Fields>
    implements ObjectCopyWith<$R, $In, $Out> {
  FieldsCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends Fields>(
      Then<Fields, $Out2> t, Then<$Out2, $R2> t2);
  $R call({String? key, String? value});
}

class _FieldsCopyWithImpl<$R, $Out extends Fields>
    extends CopyWithBase<$R, Fields, $Out>
    implements FieldsCopyWith<$R, Fields, $Out> {
  _FieldsCopyWithImpl(super.value, super.then, super.then2);
  @override
  FieldsCopyWith<$R2, Fields, $Out2> chain<$R2, $Out2 extends Fields>(
          Then<Fields, $Out2> t, Then<$Out2, $R2> t2) =>
      _FieldsCopyWithImpl($value, t, t2);

  @override
  $R call({Object? key = $none, Object? value = $none}) =>
      $then(Fields(key: or(key, $value.key), value: or(value, $value.value)));
}

class NameMapper extends MapperBase<Name> {
  static MapperContainer container = MapperContainer(
    mappers: {NameMapper()},
  );

  @override
  NameMapperElement createElement(MapperContainer container) {
    return NameMapperElement._(this, container);
  }

  @override
  String get id => 'Name';

  static final fromMap = container.fromMap<Name>;
  static final fromJson = container.fromJson<Name>;
}

class NameMapperElement extends MapperElementBase<Name> {
  NameMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  Name decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  Name fromMap(Map<String, dynamic> map) =>
      Name(givenName: container.$getOpt(map, 'givenName'));

  @override
  Function get encoder => encode;
  dynamic encode(Name v) => toMap(v);
  Map<String, dynamic> toMap(Name n) =>
      {'givenName': container.$enc(n.givenName, 'givenName')};

  @override
  String stringify(Name self) =>
      'Name(givenName: ${container.asString(self.givenName)})';
  @override
  int hash(Name self) => container.hash(self.givenName);
  @override
  bool equals(Name self, Name other) =>
      container.isEqual(self.givenName, other.givenName);
}

mixin NameMappable {
  String toJson() => NameMapper.container.toJson(this as Name);
  Map<String, dynamic> toMap() => NameMapper.container.toMap(this as Name);
  NameCopyWith<Name, Name, Name> get copyWith =>
      _NameCopyWithImpl(this as Name, $identity, $identity);
  @override
  String toString() => NameMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          NameMapper.container.isEqual(this, other));
  @override
  int get hashCode => NameMapper.container.hash(this);
}

extension NameValueCopy<$R, $Out extends Name>
    on ObjectCopyWith<$R, Name, $Out> {
  NameCopyWith<$R, Name, $Out> get asName =>
      base.as((v, t, t2) => _NameCopyWithImpl(v, t, t2));
}

typedef NameCopyWithBound = Name;

abstract class NameCopyWith<$R, $In extends Name, $Out extends Name>
    implements ObjectCopyWith<$R, $In, $Out> {
  NameCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends Name>(
      Then<Name, $Out2> t, Then<$Out2, $R2> t2);
  $R call({String? givenName});
}

class _NameCopyWithImpl<$R, $Out extends Name>
    extends CopyWithBase<$R, Name, $Out>
    implements NameCopyWith<$R, Name, $Out> {
  _NameCopyWithImpl(super.value, super.then, super.then2);
  @override
  NameCopyWith<$R2, Name, $Out2> chain<$R2, $Out2 extends Name>(
          Then<Name, $Out2> t, Then<$Out2, $R2> t2) =>
      _NameCopyWithImpl($value, t, t2);

  @override
  $R call({Object? givenName = $none}) =>
      $then(Name(givenName: or(givenName, $value.givenName)));
}

class WageSeekerAddressMapper extends MapperBase<WageSeekerAddress> {
  static MapperContainer container = MapperContainer(
    mappers: {WageSeekerAddressMapper()},
  )..linkAll({LocalityMapper.container, WardMapper.container});

  @override
  WageSeekerAddressMapperElement createElement(MapperContainer container) {
    return WageSeekerAddressMapperElement._(this, container);
  }

  @override
  String get id => 'WageSeekerAddress';

  static final fromMap = container.fromMap<WageSeekerAddress>;
  static final fromJson = container.fromJson<WageSeekerAddress>;
}

class WageSeekerAddressMapperElement
    extends MapperElementBase<WageSeekerAddress> {
  WageSeekerAddressMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  WageSeekerAddress decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  WageSeekerAddress fromMap(Map<String, dynamic> map) => WageSeekerAddress(
      tenantId: container.$getOpt(map, 'tenantId'),
      houseno: container.$getOpt(map, 'houseno'),
      streetname: container.$getOpt(map, 'streetname'),
      locality: container.$getOpt(map, 'locality'),
      ward: container.$getOpt(map, 'ward'),
      city: container.$getOpt(map, 'city'),
      pinCode: container.$getOpt(map, 'pinCode'),
      type: container.$getOpt(map, 'type'));

  @override
  Function get encoder => encode;
  dynamic encode(WageSeekerAddress v) => toMap(v);
  Map<String, dynamic> toMap(WageSeekerAddress w) => {
        'tenantId': container.$enc(w.tenantId, 'tenantId'),
        'houseno': container.$enc(w.houseno, 'houseno'),
        'streetname': container.$enc(w.streetname, 'streetname'),
        'locality': container.$enc(w.locality, 'locality'),
        'ward': container.$enc(w.ward, 'ward'),
        'city': container.$enc(w.city, 'city'),
        'pinCode': container.$enc(w.pinCode, 'pinCode'),
        'type': container.$enc(w.type, 'type')
      };

  @override
  String stringify(WageSeekerAddress self) =>
      'WageSeekerAddress(tenantId: ${container.asString(self.tenantId)}, houseno: ${container.asString(self.houseno)}, streetname: ${container.asString(self.streetname)}, locality: ${container.asString(self.locality)}, ward: ${container.asString(self.ward)}, city: ${container.asString(self.city)}, pinCode: ${container.asString(self.pinCode)}, type: ${container.asString(self.type)})';
  @override
  int hash(WageSeekerAddress self) =>
      container.hash(self.tenantId) ^
      container.hash(self.houseno) ^
      container.hash(self.streetname) ^
      container.hash(self.locality) ^
      container.hash(self.ward) ^
      container.hash(self.city) ^
      container.hash(self.pinCode) ^
      container.hash(self.type);
  @override
  bool equals(WageSeekerAddress self, WageSeekerAddress other) =>
      container.isEqual(self.tenantId, other.tenantId) &&
      container.isEqual(self.houseno, other.houseno) &&
      container.isEqual(self.streetname, other.streetname) &&
      container.isEqual(self.locality, other.locality) &&
      container.isEqual(self.ward, other.ward) &&
      container.isEqual(self.city, other.city) &&
      container.isEqual(self.pinCode, other.pinCode) &&
      container.isEqual(self.type, other.type);
}

mixin WageSeekerAddressMappable {
  String toJson() =>
      WageSeekerAddressMapper.container.toJson(this as WageSeekerAddress);
  Map<String, dynamic> toMap() =>
      WageSeekerAddressMapper.container.toMap(this as WageSeekerAddress);
  WageSeekerAddressCopyWith<WageSeekerAddress, WageSeekerAddress,
          WageSeekerAddress>
      get copyWith => _WageSeekerAddressCopyWithImpl(
          this as WageSeekerAddress, $identity, $identity);
  @override
  String toString() => WageSeekerAddressMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          WageSeekerAddressMapper.container.isEqual(this, other));
  @override
  int get hashCode => WageSeekerAddressMapper.container.hash(this);
}

extension WageSeekerAddressValueCopy<$R, $Out extends WageSeekerAddress>
    on ObjectCopyWith<$R, WageSeekerAddress, $Out> {
  WageSeekerAddressCopyWith<$R, WageSeekerAddress, $Out>
      get asWageSeekerAddress =>
          base.as((v, t, t2) => _WageSeekerAddressCopyWithImpl(v, t, t2));
}

typedef WageSeekerAddressCopyWithBound = WageSeekerAddress;

abstract class WageSeekerAddressCopyWith<$R, $In extends WageSeekerAddress,
    $Out extends WageSeekerAddress> implements ObjectCopyWith<$R, $In, $Out> {
  WageSeekerAddressCopyWith<$R2, $In, $Out2>
      chain<$R2, $Out2 extends WageSeekerAddress>(
          Then<WageSeekerAddress, $Out2> t, Then<$Out2, $R2> t2);
  LocalityCopyWith<$R, Locality, Locality>? get locality;
  WardCopyWith<$R, Ward, Ward>? get ward;
  $R call(
      {String? tenantId,
      String? houseno,
      String? streetname,
      Locality? locality,
      Ward? ward,
      String? city,
      String? pinCode,
      String? type});
}

class _WageSeekerAddressCopyWithImpl<$R, $Out extends WageSeekerAddress>
    extends CopyWithBase<$R, WageSeekerAddress, $Out>
    implements WageSeekerAddressCopyWith<$R, WageSeekerAddress, $Out> {
  _WageSeekerAddressCopyWithImpl(super.value, super.then, super.then2);
  @override
  WageSeekerAddressCopyWith<$R2, WageSeekerAddress, $Out2>
      chain<$R2, $Out2 extends WageSeekerAddress>(
              Then<WageSeekerAddress, $Out2> t, Then<$Out2, $R2> t2) =>
          _WageSeekerAddressCopyWithImpl($value, t, t2);

  @override
  LocalityCopyWith<$R, Locality, Locality>? get locality =>
      $value.locality?.copyWith.chain($identity, (v) => call(locality: v));
  @override
  WardCopyWith<$R, Ward, Ward>? get ward =>
      $value.ward?.copyWith.chain($identity, (v) => call(ward: v));
  @override
  $R call(
          {Object? tenantId = $none,
          Object? houseno = $none,
          Object? streetname = $none,
          Object? locality = $none,
          Object? ward = $none,
          Object? city = $none,
          Object? pinCode = $none,
          Object? type = $none}) =>
      $then(WageSeekerAddress(
          tenantId: or(tenantId, $value.tenantId),
          houseno: or(houseno, $value.houseno),
          streetname: or(streetname, $value.streetname),
          locality: or(locality, $value.locality),
          ward: or(ward, $value.ward),
          city: or(city, $value.city),
          pinCode: or(pinCode, $value.pinCode),
          type: or(type, $value.type)));
}

class WardMapper extends MapperBase<Ward> {
  static MapperContainer container = MapperContainer(
    mappers: {WardMapper()},
  );

  @override
  WardMapperElement createElement(MapperContainer container) {
    return WardMapperElement._(this, container);
  }

  @override
  String get id => 'Ward';

  static final fromMap = container.fromMap<Ward>;
  static final fromJson = container.fromJson<Ward>;
}

class WardMapperElement extends MapperElementBase<Ward> {
  WardMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  Ward decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  Ward fromMap(Map<String, dynamic> map) =>
      Ward(code: container.$getOpt(map, 'code'));

  @override
  Function get encoder => encode;
  dynamic encode(Ward v) => toMap(v);
  Map<String, dynamic> toMap(Ward w) =>
      {'code': container.$enc(w.code, 'code')};

  @override
  String stringify(Ward self) => 'Ward(code: ${container.asString(self.code)})';
  @override
  int hash(Ward self) => container.hash(self.code);
  @override
  bool equals(Ward self, Ward other) =>
      container.isEqual(self.code, other.code);
}

mixin WardMappable {
  String toJson() => WardMapper.container.toJson(this as Ward);
  Map<String, dynamic> toMap() => WardMapper.container.toMap(this as Ward);
  WardCopyWith<Ward, Ward, Ward> get copyWith =>
      _WardCopyWithImpl(this as Ward, $identity, $identity);
  @override
  String toString() => WardMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          WardMapper.container.isEqual(this, other));
  @override
  int get hashCode => WardMapper.container.hash(this);
}

extension WardValueCopy<$R, $Out extends Ward>
    on ObjectCopyWith<$R, Ward, $Out> {
  WardCopyWith<$R, Ward, $Out> get asWard =>
      base.as((v, t, t2) => _WardCopyWithImpl(v, t, t2));
}

typedef WardCopyWithBound = Ward;

abstract class WardCopyWith<$R, $In extends Ward, $Out extends Ward>
    implements ObjectCopyWith<$R, $In, $Out> {
  WardCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends Ward>(
      Then<Ward, $Out2> t, Then<$Out2, $R2> t2);
  $R call({String? code});
}

class _WardCopyWithImpl<$R, $Out extends Ward>
    extends CopyWithBase<$R, Ward, $Out>
    implements WardCopyWith<$R, Ward, $Out> {
  _WardCopyWithImpl(super.value, super.then, super.then2);
  @override
  WardCopyWith<$R2, Ward, $Out2> chain<$R2, $Out2 extends Ward>(
          Then<Ward, $Out2> t, Then<$Out2, $R2> t2) =>
      _WardCopyWithImpl($value, t, t2);

  @override
  $R call({Object? code = $none}) => $then(Ward(code: or(code, $value.code)));
}

class LocalityMapper extends MapperBase<Locality> {
  static MapperContainer container = MapperContainer(
    mappers: {LocalityMapper()},
  );

  @override
  LocalityMapperElement createElement(MapperContainer container) {
    return LocalityMapperElement._(this, container);
  }

  @override
  String get id => 'Locality';

  static final fromMap = container.fromMap<Locality>;
  static final fromJson = container.fromJson<Locality>;
}

class LocalityMapperElement extends MapperElementBase<Locality> {
  LocalityMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  Locality decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  Locality fromMap(Map<String, dynamic> map) =>
      Locality(code: container.$getOpt(map, 'code'));

  @override
  Function get encoder => encode;
  dynamic encode(Locality v) => toMap(v);
  Map<String, dynamic> toMap(Locality l) =>
      {'code': container.$enc(l.code, 'code')};

  @override
  String stringify(Locality self) =>
      'Locality(code: ${container.asString(self.code)})';
  @override
  int hash(Locality self) => container.hash(self.code);
  @override
  bool equals(Locality self, Locality other) =>
      container.isEqual(self.code, other.code);
}

mixin LocalityMappable {
  String toJson() => LocalityMapper.container.toJson(this as Locality);
  Map<String, dynamic> toMap() =>
      LocalityMapper.container.toMap(this as Locality);
  LocalityCopyWith<Locality, Locality, Locality> get copyWith =>
      _LocalityCopyWithImpl(this as Locality, $identity, $identity);
  @override
  String toString() => LocalityMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          LocalityMapper.container.isEqual(this, other));
  @override
  int get hashCode => LocalityMapper.container.hash(this);
}

extension LocalityValueCopy<$R, $Out extends Locality>
    on ObjectCopyWith<$R, Locality, $Out> {
  LocalityCopyWith<$R, Locality, $Out> get asLocality =>
      base.as((v, t, t2) => _LocalityCopyWithImpl(v, t, t2));
}

typedef LocalityCopyWithBound = Locality;

abstract class LocalityCopyWith<$R, $In extends Locality, $Out extends Locality>
    implements ObjectCopyWith<$R, $In, $Out> {
  LocalityCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends Locality>(
      Then<Locality, $Out2> t, Then<$Out2, $R2> t2);
  $R call({String? code});
}

class _LocalityCopyWithImpl<$R, $Out extends Locality>
    extends CopyWithBase<$R, Locality, $Out>
    implements LocalityCopyWith<$R, Locality, $Out> {
  _LocalityCopyWithImpl(super.value, super.then, super.then2);
  @override
  LocalityCopyWith<$R2, Locality, $Out2> chain<$R2, $Out2 extends Locality>(
          Then<Locality, $Out2> t, Then<$Out2, $R2> t2) =>
      _LocalityCopyWithImpl($value, t, t2);

  @override
  $R call({Object? code = $none}) =>
      $then(Locality(code: or(code, $value.code)));
}
