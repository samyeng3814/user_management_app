import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:user_management_app/env/base_config.dart';
import 'package:user_management_app/features/login/model/login_model.dart';
import 'package:user_management_app/utils/exception.dart';

class LoginRemoteDataSource {
  final Dio dio = Dio();
  Future<LoginResModel> customerLogin(LoginReqModel credentials) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      throw NetworkException("No Internet Connection");
    } else {
      try {
        final response = await dio.post(
          DevConfig().login,
          data: jsonEncode(
            LoginReqModel().toJson(),
          ),
        );

        if (response.statusCode == 200) {
          return LoginResModel.fromJson(jsonDecode(response.data));
        } else {
          throw 'Error: ${response.statusMessage}';
        }
      } catch (e) {
        throw 'An error occurred: $e';
      }
    }
  }

  Future customerLogout() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      throw NetworkException("No Internet Connection");
    } else {
      try {
        final response = await dio.post(
          DevConfig().logout,
          data: jsonEncode(
            LoginReqModel().toJson(),
          ),
        );

        if (response.statusCode == 200) {
          return LoginResModel.fromJson(jsonDecode(response.data));
        } else {
          throw 'Error: ${response.statusMessage}';
        }
      } catch (e) {
        throw 'An error occurred: $e';
      }
    }
  }
}
