import 'package:flutter/material.dart';
class SubmissionPage extends StatelessWidget {
  const SubmissionPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: ()=>Navigator.of(context).pop(), icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
        title: Text('Assignment Hand In',    style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold,),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        children: [

          SizedBox(
            height: 50,
          ),

          Row(
            children: [
              Icon(
                Icons.file_copy_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 11,
              ),
              Text(
                "Files",
                style: TextStyle(     color: Colors.white,),
              ),
              SizedBox(
                width: 11,
              ),
              Icon(
                Icons.folder_copy_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 11,
              ),
              Text(
                "Add",
                style: TextStyle(     color: Colors.white,),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 60),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: Column(
              children: [
                Icon(Icons.download_outlined),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Your Can drag and drop files here to add them",
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "Opened: Tueday, 4 July 2024, 12:00 AM",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "Due: Friday, 7 Step 2024, 11:55 PM",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(height: 50,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xFF0361AD),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Text("ADD Submission",style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white),),
          ),

        ],
      ),
    );
  }
}
