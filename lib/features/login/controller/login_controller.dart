import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:user_management_app/features/login/model/login_data_source.dart';
import 'package:user_management_app/features/login/model/login_model.dart';
import 'package:user_management_app/utils/exception.dart';
import 'package:user_management_app/utils/hive_model.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;
  var errorMessage = ''.obs;
  var token = ''.obs;

  void storeUser(UserHiveModel user) async {
    final userBox = Hive.box<UserHiveModel>('userBox');
    await userBox.put('currentUser', user);
  }

  Future<void> login(LoginReqModel loginReqModel) async {
    isLoading.value = true;
    errorMessage.value = '';
    final loginRemoteDataSource = LoginRemoteDataSource();
    isLoading.value = false;

    try {
      final response = await loginRemoteDataSource.customerLogin(loginReqModel);
      if (response.message == "User logged in successfully") {
        token.value = response.accessToken;
        errorMessage.value = response.message;
        storeUser(
          UserHiveModel(
              photoUrl: response.photoUrl,
              email: response.email,
              accessToken: response.accessToken,
              username: response.userName,
              phoneNumber: response.phoneNumber),
        );
      }
    } catch (e) {
      if (e is NetworkException) {
        errorMessage.value = e.error;
      } else {
        errorMessage.value = e.toString();
      }
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> logout() async {
    final box = Hive.box<UserHiveModel>('userBox');
    await box.delete('currentUser');
  }
}
