// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'individual_details_model.dart';

class IndividualDetailsMapper extends MapperBase<IndividualDetails> {
  static MapperContainer container = MapperContainer(
    mappers: {IndividualDetailsMapper()},
  );

  @override
  IndividualDetailsMapperElement createElement(MapperContainer container) {
    return IndividualDetailsMapperElement._(this, container);
  }

  @override
  String get id => 'IndividualDetails';

  static final fromMap = container.fromMap<IndividualDetails>;
  static final fromJson = container.fromJson<IndividualDetails>;
}

class IndividualDetailsMapperElement
    extends MapperElementBase<IndividualDetails> {
  IndividualDetailsMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  IndividualDetails decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  IndividualDetails fromMap(Map<String, dynamic> map) => IndividualDetails(
      aadharNo: container.$getOpt(map, 'aadharNo'),
      name: container.$getOpt(map, 'name'),
      guardianName: container.$getOpt(map, 'guardianName'),
      relationship: container.$getOpt(map, 'relationship'),
      dateofbirthepoch: container.$getOpt(map, 'dateofbirthepoch'),
      gender: container.$getOpt(map, 'gender'),
      socialCategories: container.$getOpt(map, 'socialCategories'),
      mobileNumber: container.$getOpt(map, 'mobileNumber'),
      skills: container.$getOpt(map, 'skills'));

  @override
  Function get encoder => encode;
  dynamic encode(IndividualDetails v) => toMap(v);
  Map<String, dynamic> toMap(IndividualDetails i) => {
        'aadharNo': container.$enc(i.aadharNo, 'aadharNo'),
        'name': container.$enc(i.name, 'name'),
        'guardianName': container.$enc(i.guardianName, 'guardianName'),
        'relationship': container.$enc(i.relationship, 'relationship'),
        'dateofbirthepoch':
            container.$enc(i.dateofbirthepoch, 'dateofbirthepoch'),
        'gender': container.$enc(i.gender, 'gender'),
        'socialCategories':
            container.$enc(i.socialCategories, 'socialCategories'),
        'mobileNumber': container.$enc(i.mobileNumber, 'mobileNumber'),
        'skills': container.$enc(i.skills, 'skills')
      };

  @override
  String stringify(IndividualDetails self) =>
      'IndividualDetails(aadharNo: ${container.asString(self.aadharNo)}, name: ${container.asString(self.name)}, guardianName: ${container.asString(self.guardianName)}, relationship: ${container.asString(self.relationship)}, dateofbirthepoch: ${container.asString(self.dateofbirthepoch)}, gender: ${container.asString(self.gender)}, socialCategories: ${container.asString(self.socialCategories)}, mobileNumber: ${container.asString(self.mobileNumber)}, skills: ${container.asString(self.skills)})';
  @override
  int hash(IndividualDetails self) =>
      container.hash(self.aadharNo) ^
      container.hash(self.name) ^
      container.hash(self.guardianName) ^
      container.hash(self.relationship) ^
      container.hash(self.dateofbirthepoch) ^
      container.hash(self.gender) ^
      container.hash(self.socialCategories) ^
      container.hash(self.mobileNumber) ^
      container.hash(self.skills);
  @override
  bool equals(IndividualDetails self, IndividualDetails other) =>
      container.isEqual(self.aadharNo, other.aadharNo) &&
      container.isEqual(self.name, other.name) &&
      container.isEqual(self.guardianName, other.guardianName) &&
      container.isEqual(self.relationship, other.relationship) &&
      container.isEqual(self.dateofbirthepoch, other.dateofbirthepoch) &&
      container.isEqual(self.gender, other.gender) &&
      container.isEqual(self.socialCategories, other.socialCategories) &&
      container.isEqual(self.mobileNumber, other.mobileNumber) &&
      container.isEqual(self.skills, other.skills);
}

mixin IndividualDetailsMappable {
  String toJson() =>
      IndividualDetailsMapper.container.toJson(this as IndividualDetails);
  Map<String, dynamic> toMap() =>
      IndividualDetailsMapper.container.toMap(this as IndividualDetails);
  IndividualDetailsCopyWith<IndividualDetails, IndividualDetails,
          IndividualDetails>
      get copyWith => _IndividualDetailsCopyWithImpl(
          this as IndividualDetails, $identity, $identity);
  @override
  String toString() => IndividualDetailsMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          IndividualDetailsMapper.container.isEqual(this, other));
  @override
  int get hashCode => IndividualDetailsMapper.container.hash(this);
}

extension IndividualDetailsValueCopy<$R, $Out extends IndividualDetails>
    on ObjectCopyWith<$R, IndividualDetails, $Out> {
  IndividualDetailsCopyWith<$R, IndividualDetails, $Out>
      get asIndividualDetails =>
          base.as((v, t, t2) => _IndividualDetailsCopyWithImpl(v, t, t2));
}

typedef IndividualDetailsCopyWithBound = IndividualDetails;

abstract class IndividualDetailsCopyWith<$R, $In extends IndividualDetails,
    $Out extends IndividualDetails> implements ObjectCopyWith<$R, $In, $Out> {
  IndividualDetailsCopyWith<$R2, $In, $Out2>
      chain<$R2, $Out2 extends IndividualDetails>(
          Then<IndividualDetails, $Out2> t, Then<$Out2, $R2> t2);
  $R call(
      {String? aadharNo,
      String? name,
      String? guardianName,
      String? relationship,
      int? dateofbirthepoch,
      String? gender,
      String? socialCategories,
      String? mobileNumber,
      String? skills});
}

class _IndividualDetailsCopyWithImpl<$R, $Out extends IndividualDetails>
    extends CopyWithBase<$R, IndividualDetails, $Out>
    implements IndividualDetailsCopyWith<$R, IndividualDetails, $Out> {
  _IndividualDetailsCopyWithImpl(super.value, super.then, super.then2);
  @override
  IndividualDetailsCopyWith<$R2, IndividualDetails, $Out2>
      chain<$R2, $Out2 extends IndividualDetails>(
              Then<IndividualDetails, $Out2> t, Then<$Out2, $R2> t2) =>
          _IndividualDetailsCopyWithImpl($value, t, t2);

  @override
  $R call(
          {Object? aadharNo = $none,
          Object? name = $none,
          Object? guardianName = $none,
          Object? relationship = $none,
          Object? dateofbirthepoch = $none,
          Object? gender = $none,
          Object? socialCategories = $none,
          Object? mobileNumber = $none,
          Object? skills = $none}) =>
      $then(IndividualDetails(
          aadharNo: or(aadharNo, $value.aadharNo),
          name: or(name, $value.name),
          guardianName: or(guardianName, $value.guardianName),
          relationship: or(relationship, $value.relationship),
          dateofbirthepoch: or(dateofbirthepoch, $value.dateofbirthepoch),
          gender: or(gender, $value.gender),
          socialCategories: or(socialCategories, $value.socialCategories),
          mobileNumber: or(mobileNumber, $value.mobileNumber),
          skills: or(skills, $value.skills)));
}
