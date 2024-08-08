abstract class BaseConfig {
  String get login;
  String get register;
  String get logout;
  String get resetPassword;
  String get getCustomers;
  String get getCustomer;
  String get addCustomer;
  String get updateCustomer;
  String get deleteCustomer;
}

const authUrl = "https://customer-management-nodejs-server.onrender.com/api/";
const getCustomersUrl =
    "https://customer-management-nodejs-server.onrender.com/api/customers/";

class DevConfig implements BaseConfig {
  //Auth
  @override
  String get login => "${authUrl}login";

  @override
  String get register => "${authUrl}register";

  @override
  String get logout => "${authUrl}logout";

  @override
  String get resetPassword => "${authUrl}logout";

  //customer
  @override
  String get getCustomers => getCustomersUrl;

  @override
  String get addCustomer => "${getCustomersUrl}add-customer";

  @override
  String get deleteCustomer => "${getCustomersUrl}delete-customer";

  @override
  String get getCustomer => "${getCustomersUrl}get-customer";

  @override
  String get updateCustomer => "${getCustomersUrl}update-customer";
}
