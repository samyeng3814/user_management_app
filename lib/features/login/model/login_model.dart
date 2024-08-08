class LoginReqModel {
  final String? email;
  final String? password;

  LoginReqModel({
    this.email,
    this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }
}

class LoginResModel {
  final String accessToken;
  final String message;
  final String userName;
  final String photoUrl;
  final String email;
  final String phoneNumber;

  const LoginResModel({
    required this.accessToken,
    required this.message,
    required this.email,
    required this.photoUrl,
    required this.userName,
    required this.phoneNumber,
  });

  factory LoginResModel.fromJson(Map<String, dynamic> json) {
    return LoginResModel(
      accessToken: json['userCredential']['user']['stsTokenManager']
          ['accessToken'],
      message: json['message'],
      email: json['userCredential']['user']['providerData']['email'],
      photoUrl: json['userCredential']['user']['providerData']['photoURL'],
      userName: json['userCredential']['_tokenresponse']['displayName'],
      phoneNumber: json['userCredential']['user']['providerData']
          ['phoneNumber'],
    );
  }
}
