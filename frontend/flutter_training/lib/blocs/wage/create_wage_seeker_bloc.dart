import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_training/models/create-wage-seeker/wage_seeker_details.dart';
import 'package:flutter_training/services/urls.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/remote_client.dart';
import '../../data/repositories/wage_repository/wage_repository.dart';
import '../../models/create-wage-seeker/address_details_model.dart';
import '../../models/create-wage-seeker/create_wage_seeker_reg_response.dart';
import 'package:flutter_training/utils/localization_constants/i18_key_constants.dart'
    as i18;

//newer import////////
// import '../../models/create-wage-seeker/new_models/wage_request_model.dart';
//////////////////

import '../../models/create-wage-seeker/individual_details_model.dart';

part 'create_wage_seeker_bloc.freezed.dart';

typedef WageSeekerRegEmitter = Emitter<WageSeekerRegState>;

class WageSeekerRegBloc extends Bloc<WageSeekerRegEvent, WageSeekerRegState> {
  IndividualDetails? _individualDetails;
  IndividualAddressDetails? _individualAddressDetails;

  WageSeekerRegBloc() : super(const WageSeekerRegState.initial()) {
    on<RegWageSeekerEvent>(_onCreate);
  }
  Future<void> _onCreate(
      RegWageSeekerEvent event, WageSeekerRegEmitter emit) async {
    Client client = Client();
    try {
      _individualDetails = event.individualDetails;
      _individualAddressDetails = event.individualAddressDetails;

      emit(const WageSeekerRegState.loading());
      CreateWageSeekerRegResponse createWageSeekerResponse =
          await WageSeekerRepository(client.init()).createWageSeeker(
              url: Urls.wageSeekerServices.individualCreate,
              body: WageSeekersContainer(
                  Individual: IndividualDet(
                tenantId: "pg.citya",
                name: Name(givenName: event.individualDetails.name),
                aadharNo: event.individualDetails.aadharNo,
                guardianName: event.individualDetails.guardianName,
                relationship: event.individualDetails.relationship,
                dateofbirthepoch: event.individualDetails.dateofbirthepoch,
                gender: event.individualDetails.gender ?? '',
                additionalFields: AdditionalFields(fields: [
                  Fields(
                      key: "SOCIAL_CATEGORY",
                      value: event.individualDetails.socialCategories)
                ]),
                mobileNumber: event.individualDetails.mobileNumber,
                // skills: event.individualDetails.skills,
                address: [
                  WageSeekerAddress(
                      tenantId: "pg.citya",
                      houseno: event.individualAddressDetails.houseno,
                      city: event.individualAddressDetails.city,
                      locality: Locality(
                          code: event.individualAddressDetails.locality),
                      pinCode: event.individualAddressDetails.pinCode,
                      streetname: event.individualAddressDetails.streetname,
                      ward: Ward(code: event.individualAddressDetails.ward),
                      type: "PERMANENT")
                ],
              )).toMap());

      // print(createWageSeekerResponse);
      // if (createWageSeekerResponse != null &&
      //     createWageSeekerResponse.statsMap?.successfulRecords == 1) {
      if (createWageSeekerResponse != null) {
        emit(const WageSeekerRegState.loaded());
      }
      // else if (createWageSeekerResponse != null &&
      //     createWageSeekerResponse.statsMap?.failedRecords == 1) {
      //   emit(WageSeekerRegState.error('Repeated entry'));
      // }
      else {
        emit(WageSeekerRegState.error(i18.common.someErrorOccurred));
      }
    } catch (e) {
      // on API failure, to show the error message we can emit the error state here
      print(e);
      emit(WageSeekerRegState.error(i18.common.someErrorOccurred));
    }
  }

  IndividualDetails? get individualDetails => _individualDetails;
  IndividualAddressDetails? get individualAddressDetails =>
      _individualAddressDetails;
}

@freezed
class WageSeekerRegEvent with _$WageSeekerRegEvent {
  const factory WageSeekerRegEvent.create({
    required IndividualDetails individualDetails,
    required IndividualAddressDetails individualAddressDetails,
  }) = RegWageSeekerEvent;
}

@freezed
class WageSeekerRegState with _$WageSeekerRegState {
  const WageSeekerRegState._();
  const factory WageSeekerRegState.initial() =
      _Initial; //Initial State is the first state,
  const factory WageSeekerRegState.loading() =
      _Loading; // Loading state will show a loader on the page when the API call is made
  const factory WageSeekerRegState.loaded() =
      _Loaded; // after the successful response in API call, emit the loaded state
  const factory WageSeekerRegState.error(String? error) =
      _Error; // If API response fails with error status or we do not get the desired response, Error state will be emitted
}
