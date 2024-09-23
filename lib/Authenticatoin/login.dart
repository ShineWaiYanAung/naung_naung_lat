import 'package:flutter/material.dart';
import 'package:naung_naung_latt_flutterassignemnet/Authenticatoin/singup.dart';

import '../HIVEDatabase/Model/function_CRUD.dart';
import '../HIVEDatabase/boxes.dart';
import '../HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
final  TextEditingController userNameController = TextEditingController();
final  TextEditingController passwordController = TextEditingController();
final  TextEditingController emailController    = TextEditingController();
  bool visibility = true;
Future<void> _login() async {
  final email = emailController.text;
  final password = passwordController.text;

  if (email.isEmpty || password.isEmpty) {
    CrudFunction.handleErrorState(
        context, "Please Fill the Necessary Requirement ", false);
    return;
  }

  final box = Boxes.getAccountRegiersterion();
  bool found = false;

  for (var transaction in box.values) {
    for (var account in transaction.userAccount) {
      if (account.email == email && account.password == password) {
        setState(() {
          found = true;
        });
        break;
      }
    }
    if (found) break;
  }

  if (found) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                Homepage()));
  } else {
    CrudFunction.handleErrorState(
        context, "Your Name or Password is InCorrect ", false);
  }
}

@override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SizedBox(
            height: 50,
          ),

          Image.asset("asset/logo.png",height: 150,),
          Text("Naung EDU",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
          SizedBox(height: 50), // Space for logo or title
          // Email TextField with container and shadow
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8.0,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                icon: Icon(Icons.person,size: 40,),
                iconColor: Colors.blueAccent,
                hintText: 'Email',

                contentPadding: EdgeInsets.symmetric(horizontal: 2, vertical:16.0),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 16.0),

          // Password TextField with container and shadow
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8.0,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: TextField(
              controller: passwordController,
              obscureText: visibility,
              decoration: InputDecoration(
                suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          visibility = !visibility;
                        });
                }, icon: visibility ? Icon(Icons.visibility_off,color: Colors.blueAccent,):Icon(Icons.visibility,color: Colors.blueAccent,)),
                icon: Icon(Icons.lock,size: 40,),
                iconColor: Colors.blueAccent,
                hintText: 'Password',
                contentPadding: EdgeInsets.symmetric( vertical: 16.0),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 32.0),
          ElevatedButton(
            onPressed: () {
              _login();
            },
            child: Text('Login',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 10.0),
            ),
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpPage(),),),
                child: Text('------------- or Sign Up with -------------',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              )],
          ),
          SizedBox(height: 16.0),


        ],
      ),
    );
  }

}