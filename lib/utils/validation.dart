class RegExValidation {
  static RegExp emailRegExp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );
  static RegExp passwordRegExp =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  static RegExp spaceRegExp = RegExp(
    r"\s",
  );
  static RegExp mobileNumValidationRegExp = RegExp(
    r'^[6-9][0-9]{9}',
  );
}
