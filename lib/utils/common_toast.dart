import 'package:fluttertoast/fluttertoast.dart';
import 'package:user_management_app/utils/app_colors.dart';

class CommonToast {
  Future commonToast({required String message}) {
    return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      textColor: AppColors.whiteColor,
      fontSize: 16.0,
    );
  }
}
