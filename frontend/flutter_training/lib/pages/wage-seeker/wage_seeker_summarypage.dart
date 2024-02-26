// wageseeker_summary_page.dart

import 'package:digit_components/digit_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/blocs/app_initilization/app_initilization.dart';
import 'package:flutter_training/blocs/localization/app_localization.dart';
import 'package:flutter_training/models/create-wage-seeker/individual_details_model.dart';
import 'package:flutter_training/models/create-wage-seeker/address_details_model.dart';
import 'package:flutter_training/router/app_router.dart';
import 'package:flutter_training/widgets/molecules/success_page.dart';
import 'package:flutter_training/utils/localization_constants/i18_key_constants.dart'
    as i18;

class WageSeekerSummaryPage extends StatelessWidget {
  final IndividualDetails individualDetails;
  final IndividualAddressDetails individualAddressDetails;

  WageSeekerSummaryPage({
    required this.individualDetails,
    required this.individualAddressDetails,
  });

  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Summary Page'),
      ),
      body: ScrollableContent(
        header: DigitCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  child: Text('Individual Details:'),
                  padding: EdgeInsets.all(10)),
              Container(
                  child: Text('Name ${individualDetails.name}'),
                  padding: EdgeInsets.all(10)),
              Container(
                  child: Text('aadharNo ${individualDetails.aadharNo}'),
                  padding: EdgeInsets.all(10)),
              Container(
                  child: Text('Dob ${individualDetails.dateofbirthepoch}'),
                  padding: EdgeInsets.all(10)),
              Container(
                  child: Text('Gender ${individualDetails.gender}'),
                  padding: EdgeInsets.all(10)),
              Container(
                  child: Text('Mobile no ${individualDetails.mobileNumber}'),
                  padding: EdgeInsets.all(10)),
              Container(
                  child: Text(
                      'Social_category ${individualDetails.socialCategories}'),
                  padding: EdgeInsets.all(10)),

              // Add more fields as needed

              SizedBox(height: 16.0),

              Container(
                  child: Text('Address Details:'), padding: EdgeInsets.all(10)),
              Container(
                  child: Text('House No ${individualAddressDetails.houseno}'),
                  padding: EdgeInsets.all(10)),
              Container(
                  child: Text('City ${individualAddressDetails.city}'),
                  padding: EdgeInsets.all(10)),
              Container(
                  child: Text('locality ${individualAddressDetails.locality}'),
                  padding: EdgeInsets.all(10)),
              Container(
                  child: Text('ward ${individualAddressDetails.ward}'),
                  padding: EdgeInsets.all(10)),

              ElevatedButton(
                onPressed: () {
                  // Navigate to SuccessResponseRoute
                  context.router.popAndPush(SuccessResponseRoute(
                      header: 'Successful',
                      subHeader: 'The individual has been created',
                      backButton: true,
                      callBack: () => context.router.push(
                          //const HomeRoute()
                          const CreateWageSeekerRoute()),
                      buttonLabel: t.translate(i18.common.backToHome)));
                },
                child: Text('Proceed to Success'),
              ),
              // Add more fields as needed
            ],
          ),
        ),
        footer: PoweredByDigit(),
      ),
    );
  }
}
