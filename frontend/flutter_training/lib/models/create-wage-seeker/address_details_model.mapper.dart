// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'address_details_model.dart';

class IndividualAddressDetailsMapper
    extends MapperBase<IndividualAddressDetails> {
  static MapperContainer container = MapperContainer(
    mappers: {IndividualAddressDetailsMapper()},
  );

  @override
  IndividualAddressDetailsMapperElement createElement(
      MapperContainer container) {
    return IndividualAddressDetailsMapperElement._(this, container);
  }

  @override
  String get id => 'IndividualAddressDetails';

  static final fromMap = container.fromMap<IndividualAddressDetails>;
  static final fromJson = container.fromJson<IndividualAddressDetails>;
}

class IndividualAddressDetailsMapperElement
    extends MapperElementBase<IndividualAddressDetails> {
  IndividualAddressDetailsMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  IndividualAddressDetails decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  IndividualAddressDetails fromMap(Map<String, dynamic> map) =>
      IndividualAddressDetails(
          houseno: container.$getOpt(map, 'houseno'),
          streetname: container.$getOpt(map, 'streetname'),
          locality: container.$getOpt(map, 'locality'),
          ward: container.$getOpt(map, 'ward'),
          city: container.$getOpt(map, 'city'),
          pinCode: container.$getOpt(map, 'pinCode'));

  @override
  Function get encoder => encode;
  dynamic encode(IndividualAddressDetails v) => toMap(v);
  Map<String, dynamic> toMap(IndividualAddressDetails i) => {
        'houseno': container.$enc(i.houseno, 'houseno'),
        'streetname': container.$enc(i.streetname, 'streetname'),
        'locality': container.$enc(i.locality, 'locality'),
        'ward': container.$enc(i.ward, 'ward'),
        'city': container.$enc(i.city, 'city'),
        'pinCode': container.$enc(i.pinCode, 'pinCode')
      };

  @override
  String stringify(IndividualAddressDetails self) =>
      'IndividualAddressDetails(houseno: ${container.asString(self.houseno)}, streetname: ${container.asString(self.streetname)}, locality: ${container.asString(self.locality)}, ward: ${container.asString(self.ward)}, city: ${container.asString(self.city)}, pinCode: ${container.asString(self.pinCode)})';
  @override
  int hash(IndividualAddressDetails self) =>
      container.hash(self.houseno) ^
      container.hash(self.streetname) ^
      container.hash(self.locality) ^
      container.hash(self.ward) ^
      container.hash(self.city) ^
      container.hash(self.pinCode);
  @override
  bool equals(IndividualAddressDetails self, IndividualAddressDetails other) =>
      container.isEqual(self.houseno, other.houseno) &&
      container.isEqual(self.streetname, other.streetname) &&
      container.isEqual(self.locality, other.locality) &&
      container.isEqual(self.ward, other.ward) &&
      container.isEqual(self.city, other.city) &&
      container.isEqual(self.pinCode, other.pinCode);
}

mixin IndividualAddressDetailsMappable {
  String toJson() => IndividualAddressDetailsMapper.container
      .toJson(this as IndividualAddressDetails);
  Map<String, dynamic> toMap() => IndividualAddressDetailsMapper.container
      .toMap(this as IndividualAddressDetails);
  IndividualAddressDetailsCopyWith<IndividualAddressDetails,
          IndividualAddressDetails, IndividualAddressDetails>
      get copyWith => _IndividualAddressDetailsCopyWithImpl(
          this as IndividualAddressDetails, $identity, $identity);
  @override
  String toString() => IndividualAddressDetailsMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          IndividualAddressDetailsMapper.container.isEqual(this, other));
  @override
  int get hashCode => IndividualAddressDetailsMapper.container.hash(this);
}

extension IndividualAddressDetailsValueCopy<$R,
        $Out extends IndividualAddressDetails>
    on ObjectCopyWith<$R, IndividualAddressDetails, $Out> {
  IndividualAddressDetailsCopyWith<$R, IndividualAddressDetails, $Out>
      get asIndividualAddressDetails => base
          .as((v, t, t2) => _IndividualAddressDetailsCopyWithImpl(v, t, t2));
}

typedef IndividualAddressDetailsCopyWithBound = IndividualAddressDetails;

abstract class IndividualAddressDetailsCopyWith<
        $R,
        $In extends IndividualAddressDetails,
        $Out extends IndividualAddressDetails>
    implements ObjectCopyWith<$R, $In, $Out> {
  IndividualAddressDetailsCopyWith<$R2, $In, $Out2>
      chain<$R2, $Out2 extends IndividualAddressDetails>(
          Then<IndividualAddressDetails, $Out2> t, Then<$Out2, $R2> t2);
  $R call(
      {String? houseno,
      String? streetname,
      String? locality,
      String? ward,
      String? city,
      String? pinCode});
}

class _IndividualAddressDetailsCopyWithImpl<$R,
        $Out extends IndividualAddressDetails>
    extends CopyWithBase<$R, IndividualAddressDetails, $Out>
    implements
        IndividualAddressDetailsCopyWith<$R, IndividualAddressDetails, $Out> {
  _IndividualAddressDetailsCopyWithImpl(super.value, super.then, super.then2);
  @override
  IndividualAddressDetailsCopyWith<$R2, IndividualAddressDetails, $Out2>
      chain<$R2, $Out2 extends IndividualAddressDetails>(
              Then<IndividualAddressDetails, $Out2> t, Then<$Out2, $R2> t2) =>
          _IndividualAddressDetailsCopyWithImpl($value, t, t2);

  @override
  $R call(
          {Object? houseno = $none,
          Object? streetname = $none,
          Object? locality = $none,
          Object? ward = $none,
          Object? city = $none,
          Object? pinCode = $none}) =>
      $then(IndividualAddressDetails(
          houseno: or(houseno, $value.houseno),
          streetname: or(streetname, $value.streetname),
          locality: or(locality, $value.locality),
          ward: or(ward, $value.ward),
          city: or(city, $value.city),
          pinCode: or(pinCode, $value.pinCode)));
}
