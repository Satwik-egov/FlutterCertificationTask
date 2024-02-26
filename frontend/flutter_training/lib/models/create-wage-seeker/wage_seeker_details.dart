import 'package:dart_mappable/dart_mappable.dart';

part 'wage_seeker_details.mapper.dart';

@MappableClass()
class WageSeekersContainer with WageSeekersContainerMappable {
  IndividualDet Individual;

  WageSeekersContainer({required this.Individual});
}

@MappableClass()
class IndividualDet with IndividualDetMappable {
  String? tenantId;
  List<WageSeekerAddress>? address;
  String? aadharNo;
  Name? name;
  String? guardianName;
  String? relationship;
  int? dateofbirthepoch;
  String gender;
  AdditionalFields? additionalFields;
  String? mobileNumber;
  String? skills;
  //add a photograph

  IndividualDet({
    this.tenantId,
    this.address,
    this.aadharNo,
    this.name,
    this.guardianName,
    this.relationship,
    this.dateofbirthepoch,
    required this.gender,
    this.additionalFields,
    this.mobileNumber,
    this.skills,
  });
}

@MappableClass()
class AdditionalFields with AdditionalFieldsMappable {
  List<Fields>? fields;

  AdditionalFields({
    this.fields,
  });
}

@MappableClass()
class Fields with FieldsMappable {
  String? key;
  String? value;

  Fields({this.key, this.value});

  // Helper method to create a Fields instance from key and value
  factory Fields.fromKeyValue(String key, String value) {
    return Fields(key: key, value: value);
  }

  // Helper method to convert Fields instance to JSON format
  Map<String, dynamic> toJSON() {
    return {
      'key': key,
      'value': value,
    };
  }
}

@MappableClass()
class Name with NameMappable {
  String? givenName;

  Name({
    this.givenName,
  });
}

@MappableClass()
class WageSeekerAddress with WageSeekerAddressMappable {
  String? tenantId;
  String? houseno;
  String? streetname;
  Locality? locality;
  Ward? ward;
  String? city;
  String? pinCode;
  String? type;

  WageSeekerAddress(
      {this.tenantId,
      this.houseno,
      this.streetname,
      this.locality,
      this.ward,
      this.city,
      this.pinCode,
      this.type});
}

@MappableClass()
class Ward with WardMappable {
  String? code;

  Ward({this.code});
}

@MappableClass()
class Locality with LocalityMappable {
  String? code;

  Locality({this.code});
}
