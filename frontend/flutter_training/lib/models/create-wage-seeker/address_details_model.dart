import 'package:dart_mappable/dart_mappable.dart';

part 'address_details_model.mapper.dart';

@MappableClass()
class IndividualAddressDetails with IndividualAddressDetailsMappable {
  String? houseno;
  String? streetname;
  String? locality;
  String? ward;
  String? city;
  String? pinCode;

  IndividualAddressDetails({
    this.houseno,
    this.streetname,
    this.locality,
    this.ward,
    this.city,
    this.pinCode,
  });
}