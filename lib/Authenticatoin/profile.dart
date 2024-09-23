import 'package:flutter/material.dart';
import 'package:naung_naung_latt_flutterassignemnet/Authenticatoin/singup.dart';
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(onPressed: ()=>Navigator.of(context).pop(), icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
        title: Text('Profile',    style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold,),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(

          children: [
            Spacer(),//
            CircleAvatar(
              radius: 80, // Adjust the size as needed
              backgroundImage: AssetImage("asset/profile.png") // Replace with your image URL
            ),
            const SizedBox(height: 16),

            Text(
              'Naung Naung Lat', // User's name
              style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold,),
            ),
            SizedBox(height: 8), // Space between name and class
            Text('Class: 10th Grade',    style: TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold,),),
            Text('Age: 15',    style: TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold,),),
            Text('Gender: Male',    style: TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold,),),
            SizedBox(height: 20),
            Spacer(),// Space before logout button
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpPage(),));
              },
              child: Text('Logout',style: TextStyle(fontSize: 30 ),),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.red, // Text color
              ),
            ),
            Spacer(),//
          ],
        ),
      ),
    );
  }
}