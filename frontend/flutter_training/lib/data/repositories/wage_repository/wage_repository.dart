// ignore_for_file: avoid_dynamic_calls

import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_training/models/create-wage-seeker/wage_seeker_details.dart';
import 'package:flutter_training/models/create-wage-seeker/create_wage_seeker_reg_response.dart';

import '../../../utils/global_variables.dart';

class WageSeekerRepository {
  final Dio _client;

  WageSeekerRepository(this._client);

  Future<CreateWageSeekerRegResponse> createWageSeeker({
    Map<String, String>? queryParameters,
    dynamic body,
    required String url,
  }) async {
    try {
      final response = await _client.post(url,
          queryParameters: queryParameters,
          data: body ?? {},
          options: Options(headers: {
            "authority": "https://unified-dev.digit.org",
            "content-type": "application/json; charset=utf-8",
            "cookie":
                "intercom-id-xp1951jv=ce2f5125-be61-44aa-ae0a-89bdba10a96c; intercom-device-id-xp1951jv=60fca8ab-2add-465e-aa3f-b21e86ed11b2; _ga_XBQP06FR8V=GS1.1.1683526440.3.1.1683526463.0.0.0; _ga_P1TZCPKF6S=GS1.1.1683536500.2.0.1683536500.0.0.0; __cuid=992c8ca65eeb4d13b1f4885f9b3c8ed8; amp_fef1e8=b510e001-0157-44d1-9b89-1579801ced79R...1gvvi5g7m.1gvvi5t7b.c7.1u.e5; _ga=GA1.1.492106158.1659432081; _ga_H9YC8FEN6F=GS1.1.1683612680.3.1.1683612708.32.0.0",
            "origin": "https://unified-dev.digit.org",
            "referer": "https://unified-dev.digit.org",
            "content-length": 0
          }, extra: {
            "accessToken": GlobalVariables.authToken,
            "userInfo": GlobalVariables.userRequestModel
            // "accessToken": "54433ff3-52a6-4ebc-8917-045619d08034"
          }));
      // print(response);

      return CreateWageSeekerRegResponseMapper.fromMap(
          response.data as Map<String, dynamic>);
    } on DioError catch (ex) {
      // Assuming there will be an errorMessage property in the JSON object
      print(ex); //I see a bad request error
      rethrow;
    }
  }
}
