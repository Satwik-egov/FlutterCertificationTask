import 'package:flutter/material.dart';

class Constants {
  static const String mdmsApiEndPoint = 'egov-mdms-service/v1/_search';
  static final navKey = GlobalKey<NavigatorState>();
  static const userMobileNumberKey = 'mobileNumber';
  static const String active = 'ACTIVE';
  static const String pendingForAcceptance = 'PENDING_FOR_ACCEPTANCE';
  static const String pendingForCorrection = 'PENDINGFORCORRECTION';
  static const String activeInboxStatus = 'ACTIVE_INBOX_CARD_STATUS';
  static const String rejected = 'REJECTED';
  static const String sentBack = 'SENTBACKTOCBO';
  static const muktaIcon = 'assets/svg/mukta.svg';
  static const devAssets =
      'https://s3.ap-south-1.amazonaws.com/works-dev-asset/worksGlobalConfig.json';
  static const qaAssets =
      'https://s3.ap-south-1.amazonaws.com/works-qa-asset/worksGlobalConfig.json';
  static const uatAssets =
      'https://s3.ap-south-1.amazonaws.com/works-uat-asset/worksGlobalConfig.json';
  static const prodAssets =
      'https://s3.ap-south-1.amazonaws.com/works-prod-asset/worksGlobalConfig.json';
  static const devEnv = 'dev';
  static const qaEnv = 'qa';
  static const uatEnv = 'uat';
  static const prodEnv = 'prod';
  static const homeMyWorks = 'HOME_MY_WORKS';
  static const homeTrackAttendance = 'HOME_TRACK_ATTENDENCE';
  static const homeMusterRolls = 'HOME_MUSTER_ROLLS';
  static const homeMyBills = 'HOME_MY_BILLS';
  static const homeCreateBirthRegistration = 'HOME_BIRTH_REGISTRATION_CREATE';
  static const homeSearchBirthRegistration = 'HOME_BIRTH_REGISTRATION_SEARCH';
  static const homeRegisterWageSeeker = 'HOME_INDIVIDUAL_REGISTRATION';
  static const myBillsWageType = 'EXPENSE.WAGES';
  static const myBillsPurchaseType = 'EXPENSE.PURCHASE';
  static const myBillsSupervisionType = 'EXPENSE.WAGES';
  static List<String> bndHospitalNamesList = [
    "Neelkanth Hospital",
    "Ajit Hospital",
    "Dashmesh Hospital",
    "Biala Orthopaedics And Multispeciality Hospital",
    "Dr. Parminder Singh Pannu Memorial Janta Hospital",
    "Med Card Multispeciality Hospital",
    "Taj Hospital Mattewal"
  ];
  static List<String> bndGenderList = ['Male', 'Female', 'Transgender'];
  static List<String> wageSeekerSkillList = [
    'Scavenger',
    'Cleaner',
    'BoringMistry'
  ];

  // static const socialCategoryEntries = <DropdownMenuEntry<String>>[
  //   DropdownMenuEntry(value: 'GEN', label: 'General'),
  //   DropdownMenuEntry(value: 'SC/ST', label: 'SC/ST'),
  //   DropdownMenuEntry(value: 'Others', label: 'Others')
  // ];

  // static const relationshipEntries = <DropdownMenuEntry<String>>[
  //   DropdownMenuEntry(value: 'Father', label: 'Father'),
  //   DropdownMenuEntry(value: 'Husband', label: 'Husband'),
  //   DropdownMenuEntry(value: 'Others', label: 'Others')
  // ];
  static List<String> socialCategoryList = ['GEN', 'SC/ST', 'Other'];
  static List<String> relationshipList = ['Father', 'Husband', 'Other'];
  static List<String> cityList = ['pg.citya', 'pg.cityb', 'pg.cityc'];
  static List<String> wardList = ['warda', 'wardb', 'wardc'];
  static List<String> localityList = ['loca', 'locb', 'locc'];

  // static const cityEntries = <DropdownMenuEntry<String>>[
  //   DropdownMenuEntry(value: 'pg.citya', label: 'City A'),
  //   DropdownMenuEntry(value: 'pg.cityb', label: 'City B'),
  //   DropdownMenuEntry(value: 'pg.cityc', label: 'City C')
  // ];

  // static const wardEntries = <DropdownMenuEntry<String>>[
  //   DropdownMenuEntry(value: 'ward1', label: 'Ward A'),
  //   DropdownMenuEntry(value: 'ward2', label: 'Ward B'),
  //   DropdownMenuEntry(value: 'ward3', label: 'Ward C')
  // ];

  // static const localityEntries = <DropdownMenuEntry<String>>[
  //   DropdownMenuEntry(value: 'locality1', label: 'Locality A'),
  //   DropdownMenuEntry(value: 'locality2', label: 'Locality B'),
  //   DropdownMenuEntry(value: 'locality3', label: 'Locality C')
  // ];
}

final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
