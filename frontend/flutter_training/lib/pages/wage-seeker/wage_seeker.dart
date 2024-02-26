import 'package:digit_components/digit_components.dart';
import 'package:digit_components/widgets/atoms/digit_date_form_picker.dart';
import 'package:digit_components/widgets/atoms/digit_text_form_field.dart';
import 'package:digit_components/widgets/digit_card.dart';
import 'package:digit_components/widgets/digit_dialog.dart';
import 'package:digit_components/widgets/digit_elevated_button.dart';
import 'package:digit_components/widgets/scrollable_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_training/blocs/localization/app_localization.dart';
import 'package:flutter_training/blocs/wage/create_wage_seeker_bloc.dart';
import 'package:flutter_training/models/create-wage-seeker/address_details_model.dart';
import 'package:flutter_training/models/create-wage-seeker/individual_details_model.dart';
import 'package:flutter_training/pages/wage-seeker/wage_seeker_summarypage.dart';
import 'package:flutter_training/widgets/SideBar.dart';
import 'package:flutter_training/widgets/atoms/app_bar_logo.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:flutter_training/utils/localization_constants/i18_key_constants.dart'
    as i18;
import '../../router/app_router.dart';
import '../../utils/constants.dart';
import '../../utils/notifiers.dart';
import '../../widgets/Back.dart';
import '../../widgets/atoms/radio_button_list.dart';
import '../../widgets/drawer_wrapper.dart';
// import '../../widgets/loaders.dart' as prefix;

class CreateWageSeekerPage extends StatefulWidget {
  const CreateWageSeekerPage({super.key});

  @override
  State<CreateWageSeekerPage> createState() => _CreateWageSeekerPageState();
}

class _CreateWageSeekerPageState extends State<CreateWageSeekerPage> {
  static const aadharNoKey = 'aadhaar';
  static const nameKey = 'name';
  static const houseNoKey = 'houseno';
  static const dobKey = 'dob';
  static const genderKey = 'gender';
  static const pinCodeKey = 'pincode';
  static var relationshipKey = 'relationship';
  static var wardKey = 'ward';
  static var socialCategoryKey = 'socialcategory';
  static var cityKey = 'city';
  static const mobileNoKey = 'mobileno';
  static var localityKey = 'locality';
  static const streetNameKey = 'streetname';
  static const guardianNameKey = 'guardianname';
  static const skillKey = 'skillkey';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(titleSpacing: 0, title: const AppBarLogo()),
      drawer: const DrawerWrapper(Drawer(child: SideBar())),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ScrollableContent(
            header: const Back(),
            children: [
              ReactiveFormBuilder(
                  form: buildForm,
                  builder: (context, form, child) {
                    return Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        DigitCard(
                            child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Enter individual details',
                                style: const TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.w700),
                                textAlign: TextAlign.left,
                              )),
                          DigitTextFormField(
                            label: t.translate(i18.common.aadhaarNumber),
                            formControlName: aadharNoKey,
                            isRequired: true,
                            validationMessages: {
                              'required': (_) =>
                                  t.translate(i18.wageSeeker.aadhaarRequired),
                              'minLength': (_) => t.translate(
                                  i18.wageSeeker.minAadhaarCharacters),
                              'maxLength': (_) => t.translate(
                                  i18.wageSeeker.maxAadhaarCharacters),
                            },
                          ),

                          DigitTextFormField(
                            label: t.translate(i18.wageSeeker.nameOfWageSeeker),
                            formControlName: nameKey,
                            isRequired: true,
                            validationMessages: {
                              'required': (_) =>
                                  t.translate(i18.wageSeeker.nameRequired),
                              'minLength': (_) =>
                                  t.translate(i18.wageSeeker.minNameCharacters),
                              'maxLength': (_) =>
                                  t.translate(i18.wageSeeker.maxNameCharacters),
                            },
                          ),
                          DigitTextFormField(
                            label: t.translate(i18.common.guardianName),
                            formControlName: guardianNameKey,
                            isRequired: true,
                            validationMessages: {
                              'required': (_) => t
                                  .translate(i18.wageSeeker.fatherNameRequired),
                              'minLength': (_) => t.translate(
                                  i18.wageSeeker.minFatherNameCharacters),
                              'maxLength': (_) => t.translate(
                                  i18.wageSeeker.maxFatherNameCharacters),
                            },
                          ),
                          DigitReactiveDropdown<String>(
                            label: 'relationship',
                            menuItems: Constants.relationshipList,
                            isRequired: true,
                            formControlName: relationshipKey,
                            valueMapper: (value) => t.translate('$value'),
                            onChanged: (value) {},
                            validationMessages: {
                              'required': (_) => t.translate(
                                    i18.wageSeeker.relationshipRequired,
                                  ),
                            },
                          ),

                          DigitRadioButtonList(
                              labelText: t.translate(i18.common.gender),
                              formControlName: genderKey,
                              valueMapper: (value) => value,
                              options: Constants.bndGenderList),

                          DigitRadioButtonList(
                              labelText: t.translate(i18.common.selectSkill),
                              formControlName: skillKey,
                              valueMapper: (value) => value,
                              options: Constants.wageSeekerSkillList),

                          DigitDateFormPicker(
                            label: t.translate(i18.common.dateOfBirth),
                            isRequired: true,
                            icon: Icons.info_outline_rounded,
                            formControlName: dobKey,
                            autoValidation: AutovalidateMode.always,
                            requiredMessage:
                                t.translate(i18.common.dateOfBirthRequired),
                            cancelText: t.translate(i18.common.cancel),
                            confirmText: t.translate(i18.common.oK),
                            toolTipMsg:
                                t.translate(i18.common.dateOfBirthToolTip),
                          ),

                          DigitReactiveDropdown<String>(
                            label: 'socialCategory',
                            menuItems: Constants.socialCategoryList,
                            isRequired: true,
                            formControlName: socialCategoryKey,
                            valueMapper: (value) => t.translate('$value'),
                            onChanged: (value) {},
                            validationMessages: {
                              'required': (_) => t.translate(
                                    i18.wageSeeker.socialCatRequired,
                                  ),
                            },
                          ),

                          DigitTextFormField(
                            label: t.translate(i18.common.mobileNumber),
                            formControlName: mobileNoKey,
                            isRequired: true,
                            validationMessages: {
                              'required': (_) =>
                                  t.translate(i18.wageSeeker.mobileRequired),
                              'minLength': (_) => t.translate(
                                  i18.wageSeeker.minMobileCharacters),
                              'maxLength': (_) => t.translate(
                                  i18.wageSeeker.maxMobileCharacters),
                            },
                          ),
                          //TO INSERT SKILLS FIELD and PHOTOGRAPH FIELD
                        ])),
                        DigitCard(
                            child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                t.translate(i18.common.addressDetails),
                                style: const TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.w700),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            DigitTextFormField(
                              label: t.translate(i18.common.houseNo),
                              formControlName: houseNoKey,
                              isRequired: true,
                              validationMessages: {
                                'required': (_) =>
                                    t.translate(i18.common.houseNoRequired),
                                'maxLength': (_) =>
                                    t.translate(i18.common.maxHouseNoChars)
                              },
                            ),
                            DigitTextFormField(
                              label: t.translate(i18.common.streetName),
                              formControlName: streetNameKey,
                              validationMessages: {
                                'maxLength': (_) =>
                                    t.translate(i18.common.streetNameMaxChars),
                              },
                            ),
                            DigitReactiveDropdown<String>(
                              label: 'city',
                              menuItems: Constants.cityList,
                              isRequired: true,
                              formControlName: cityKey,
                              valueMapper: (value) => t.translate('$value'),
                              onChanged: (value) {},
                              validationMessages: {
                                'required': (_) => t.translate(
                                      i18.wageSeeker.cityRequired,
                                    ),
                              },
                            ),
                            DigitReactiveDropdown<String>(
                              label: 'ward',
                              menuItems: Constants.wardList,
                              isRequired: true,
                              formControlName: wardKey,
                              valueMapper: (value) => t.translate('$value'),
                              onChanged: (value) {},
                              validationMessages: {
                                'required': (_) => t.translate(
                                      i18.wageSeeker.wardRequired,
                                    ),
                              },
                            ),
                            DigitReactiveDropdown<String>(
                              label: 'locality',
                              menuItems: Constants.localityList,
                              isRequired: true,
                              formControlName: localityKey,
                              valueMapper: (value) => t.translate('$value'),
                              onChanged: (value) {},
                              validationMessages: {
                                'required': (_) => t.translate(
                                      i18.wageSeeker.localityRequired,
                                    ),
                              },
                            ),
                            DigitTextFormField(
                              label: t.translate(i18.common.pinCode),
                              formControlName: pinCodeKey,
                              isRequired: true,
                              maxLength: 6,
                              minLength: 6,
                              validationMessages: {
                                'required': (_) =>
                                    t.translate(i18.common.pinCodeRequired),
                                'minLength': (_) =>
                                    t.translate(i18.common.pinCodeMinChars),
                              },
                            ),
                          ],
                        )),
                        const SizedBox(
                          height: 16.0,
                        ),
                        BlocListener<WageSeekerRegBloc, WageSeekerRegState>(
                            listener: (context, createState) {
                              createState.maybeWhen(
                                  orElse: () => false,
                                  loading: () =>
                                      Loaders.circularLoader(context),
                                  loaded: () {
                                    // context.router.popAndPush(
                                    //     SuccessResponseRoute(
                                    //         header: 'Successful',
                                    //         subHeader:
                                    //             'The individual has been created',
                                    //         backButton: true,
                                    //         callBack: () => context.router.push(
                                    //             //const HomeRoute()
                                    //             const CreateWageSeekerRoute()),
                                    //         buttonLabel: t.translate(
                                    //             i18.common.backToHome)));

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            WageSeekerSummaryPage(
                                          individualDetails: context
                                                  .read<WageSeekerRegBloc>()
                                                  .individualDetails ??
                                              IndividualDetails(), // Provide a default if needed
                                          individualAddressDetails: context
                                                  .read<WageSeekerRegBloc>()
                                                  .individualAddressDetails ??
                                              IndividualAddressDetails(), // Provide a default if needed
                                        ),
                                      ),
                                    );
                                  },
                                  error: (String? error) =>
                                      Notifiers.getToastMessage(
                                          context, error.toString(), 'ERROR'));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: DigitElevatedButton(
                                  //this is the submit button code
                                  onPressed: () {
                                    form.markAllAsTouched();
                                    if (!form.valid) return;
                                    DigitDialog.show(context,
                                        options: DigitDialogOptions(
                                            titleIcon: const Icon(Icons.warning,
                                                color: Colors.red),
                                            titleText:
                                                t.translate(i18.common.warning),
                                            contentText:
                                                t.translate(i18.common.confirm),
                                            primaryAction: DigitDialogActions(
                                              label: t.translate(
                                                  i18.common.confirm),
                                              action: (BuildContext context) {
                                                if (form.valid) {
                                                  DateTime dob =
                                                      form.value[dobKey]
                                                          as DateTime;
                                                  context
                                                      .read<WageSeekerRegBloc>()
                                                      .add(RegWageSeekerEvent(
                                                          individualDetails: IndividualDetails(
                                                              aadharNo: form.value[aadharNoKey]
                                                                  .toString(),
                                                              dateofbirthepoch:
                                                                  dob.millisecondsSinceEpoch ~/
                                                                      1000,
                                                              name: form.value[nameKey]
                                                                  .toString(),
                                                              mobileNumber: form.value[mobileNoKey]
                                                                  .toString(),
                                                              relationship:
                                                                  form.value[relationshipKey]
                                                                      .toString(),
                                                              guardianName:
                                                                  form.value[guardianNameKey]
                                                                      .toString(),
                                                              gender: form.value[genderKey]
                                                                  .toString(),
                                                              socialCategories:
                                                                  form.value[socialCategoryKey]
                                                                      .toString(),
                                                              skills: form
                                                                  .value[skillKey]
                                                                  .toString()),
                                                          individualAddressDetails: IndividualAddressDetails(
                                                            houseno: form.value[
                                                                    houseNoKey]
                                                                .toString(),
                                                            city: form
                                                                .value[cityKey]
                                                                .toString(),
                                                            // city: cityKey,
                                                            locality: form
                                                                .value[
                                                                    localityKey]
                                                                .toString(),
                                                            ward: form
                                                                .value[wardKey]
                                                                .toString(),
                                                            // locality:
                                                            //     localityKey,
                                                            pinCode: form.value[
                                                                    pinCodeKey]
                                                                .toString(),
                                                            streetname: form
                                                                .value[
                                                                    streetNameKey]
                                                                .toString(),
                                                            // ?ward: wardKey
                                                          )));
                                                } else {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(const SnackBar(
                                                          content: Text(
                                                              'Oops! Please fill the mandatory details')));
                                                }
                                                Navigator.of(context,
                                                        rootNavigator: true)
                                                    .pop();
                                              },
                                            ),
                                            secondaryAction: DigitDialogActions(
                                                label: t
                                                    .translate(i18.common.back),
                                                action:
                                                    (BuildContext context) => {
                                                          Navigator.of(context,
                                                                  rootNavigator:
                                                                      true)
                                                              .pop(),
                                                        })));
                                  },
                                  child: Text(t.translate(i18.common.submit))),
                            )),
                      ],
                    ));
                  })
            ],
          )),
    );
  }

  FormGroup buildForm() => fb.group(<String, Object>{
        aadharNoKey: FormControl<String>(value: '123456789012', validators: [
          Validators.required,
          Validators.minLength(12),
          Validators.maxLength(12)
        ]),
        nameKey: FormControl<String>(value: 'name1', validators: [
          Validators.required,
          Validators.minLength(2),
          Validators.maxLength(128)
        ]),
        guardianNameKey: FormControl<String>(value: 'guardian1', validators: [
          Validators.required,
          Validators.minLength(2),
          Validators.maxLength(128)
        ]),
        relationshipKey: FormControl<String>(value: ''),
        socialCategoryKey: FormControl<String>(value: ''),
        dobKey: FormControl<DateTime>(
            value: null, validators: [Validators.required]),
        genderKey: FormControl<String>(value: ''),
        skillKey: FormControl<String>(value: ''),
        mobileNoKey: FormControl<String>(value: '9876543210', validators: [
          Validators.minLength(10),
          Validators.maxLength(10),
          Validators.min('6000000000'),
          Validators.max('9999999999'),
        ]),
        houseNoKey: FormControl<String>(value: '876', validators: [
          Validators.minLength(2),
          Validators.required,
          Validators.maxLength(128)
        ]),
        streetNameKey: FormControl<String>(
            value: 'street1', validators: [Validators.maxLength(64)]),
        localityKey: FormControl<String>(
            value: 'locality1', validators: [Validators.required]),
        cityKey: FormControl<String>(value: 'pg.citya', validators: [
          Validators.required,
        ]),
        wardKey: FormControl<String>(value: 'ward1', validators: [
          Validators.required,
        ]),
        pinCodeKey: FormControl<String>(value: '670987', validators: [
          Validators.minLength(6),
          Validators.required,
          Validators.maxLength(6)
        ]),
      });
}
