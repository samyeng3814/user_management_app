import 'package:flutter/services.dart';

class TextFieldValidator {
  static List<TextInputFormatter> emailValidator = [
    // FilteringTextInputFormatter.deny(' '),
    // FilteringTextInputFormatter.allow(
    //   RegExp(
    //       r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"),
    // ),
  ];

  static List<TextInputFormatter> passwordRegExp = [
    // FilteringTextInputFormatter.allow(
    //   RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$'),
    // ),
  ];
  static List<TextInputFormatter> mobileNumberValidator = [
    LengthLimitingTextInputFormatter(10),
    FilteringTextInputFormatter.deny(' '),
    FilteringTextInputFormatter.allow(RegExp("[0-9]")),
  ];
  static List<TextInputFormatter> nameValidator = [
    FilteringTextInputFormatter.allow(RegExp("[a-zA-Z ]")),
  ];
}
