import 'package:dart_mappable/dart_mappable.dart';

part 'individual_details_model.mapper.dart';

@MappableClass()
class IndividualDetails with IndividualDetailsMappable{
  String? aadharNo;
  String? name;
  String? guardianName;
  String? relationship;
  int? dateofbirthepoch;
  String? gender;
  String? socialCategories;
  String? mobileNumber;
  String? skills;
  //add a photograph

  IndividualDetails(
      {
        this.aadharNo,
        this.name,
        this.guardianName,
        this.relationship,
        this.dateofbirthepoch,
        this.gender,
        this.socialCategories,
        this.mobileNumber,
        this.skills,
      }
      );
}
