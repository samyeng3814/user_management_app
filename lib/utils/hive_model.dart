import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class UserHiveModel extends HiveObject {
  @HiveField(0)
  final String phoneNumber;

  @HiveField(1)
  final String username;

  @HiveField(2)
  final String email;

  @HiveField(3)
  final String photoUrl;

  @HiveField(4)
  final String accessToken;

  UserHiveModel({
    required this.phoneNumber,
    required this.username,
    required this.email,
    required this.photoUrl,
    required this.accessToken,
  });
}
