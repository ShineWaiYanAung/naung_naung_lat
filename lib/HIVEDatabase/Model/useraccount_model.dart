import 'package:hive/hive.dart';
part 'useraccount_model.g.dart';

@HiveType(typeId: 1)
class UserAccountModel {
  @HiveField(0)
  final String userName;
  @HiveField(1)
  final String email;
  @HiveField(2)
  final String password;

  UserAccountModel({
    required this.userName,
    required this.email,
    required this.password,
  });
}
