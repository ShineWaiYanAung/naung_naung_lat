import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:naung_naung_latt_flutterassignemnet/HIVEDatabase/Model/useraccount_model.dart';
import '../account_regiersterion.dart';
import '../boxes.dart';

class CrudFunction{

 static Future<void> addAccountRegiseristion(
      List<UserAccountModel> userAccount) async {
    final transaction = AccountRegiersterion()
      ..userAccount = userAccount
      ..createdDate = DateTime.now();


    // Print the details of the transaction for debugging
    print("Transaction Details:");
    print("Created Date: ${transaction.createdDate}");
    print("User Accounts:");
    for (var account in transaction.userAccount) {
      print(" - UserName: ${account.userName}, Email: ${account.email}, Password: ${account.password},");
    }
    print("Lectures:");

    final box = Boxes.getAccountRegiersterion();
    box.add(transaction);

    print("Transaction added to the box.");
  }
  void deleteAccount (account) {
    account.delete();
  }
 static void handleErrorState(
     BuildContext context, String message, bool errorState) {
   ScaffoldMessenger.of(context).showSnackBar(
     SnackBar(
       backgroundColor: errorState ? Colors.green : Colors.red,
       content: Text("$message"),
     ),
   );
 }
}