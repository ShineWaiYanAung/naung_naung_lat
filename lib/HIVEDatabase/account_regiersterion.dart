import 'package:hive/hive.dart';

import 'Model/useraccount_model.dart';

part 'account_regiersterion.g.dart';
@HiveType(typeId: 12)
class AccountRegiersterion extends HiveObject{
  @HiveField(11)
  late DateTime createdDate;

  @HiveField(12)
  late List<UserAccountModel> userAccount;

}