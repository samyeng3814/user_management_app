import 'package:flutter/services.dart';

class TextFieldValidator {
  static validateEmail(String value) {
    String emailRegExp =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = RegExp(emailRegExp);
    if (value.isEmpty) {
      return 'Please Enter Email';
    } else if (!regExp.hasMatch(value)) {
      return "Enter valid email";
    } else {
      return null;
    }
  }

  static validateMobileNumber(String value) {
    String mobileRegExp = r'^[4-9][0-9]{9}';
    RegExp regExp = RegExp(mobileRegExp);
    if (value.isEmpty) {
      return "Please Enter Mobile";
    } else if (!regExp.hasMatch(value)) {
      return "Enter valid mobile number";
    } else {
      return null;
    }
  }

  static List<TextInputFormatter> mobileNumberValidator = [
    LengthLimitingTextInputFormatter(10),
    FilteringTextInputFormatter.deny(' '),
    FilteringTextInputFormatter.allow(RegExp("[0-9]")),
  ];
  static List<TextInputFormatter> nameValidator = [
    FilteringTextInputFormatter.allow(RegExp("[a-zA-Z ]")),
  ];
}
