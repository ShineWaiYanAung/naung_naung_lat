import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'Authenticatoin/login.dart';
import 'HIVEDatabase/Model/useraccount_model.dart';
import 'HIVEDatabase/account_regiersterion.dart';

Future<void>main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAccountModelAdapter());
  Hive.registerAdapter(AccountRegiersterionAdapter());
  await Hive.openBox<AccountRegiersterion>('userAccount');
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home : LoginPage()
    );
  }
}
