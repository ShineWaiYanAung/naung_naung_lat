import 'package:flutter/material.dart';

import 'Submission.dart';

class CourseDetail extends StatelessWidget {
  const CourseDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        title: Text(
          'Bussiness',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
        children: [
          SizedBox(
            height: 200,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: double.infinity,
                      height: 120,
                      child: Image.asset(
                        "asset/business.jpg",
                        fit: BoxFit.fill,
                      )),
                  SizedBox(height: 8),
                  Text("Business"),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Lecuturer - David")
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          const Text(
            "Lessons",
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10,),
          const Card(
            child: ListTile(
              contentPadding:
              EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              title: Text("Day One Of Business"),
              subtitle: Text("Intro"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          SizedBox(height: 20,),
          const Card(
            child: ListTile(
              contentPadding:
              EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              title: Text("Day Two of Business"),
              subtitle: Text("Explaining"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          SizedBox(height: 20,),
          Card(
            child: ListTile(
              contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              title: const Text("HAND IN ASSIGNMENT"),
              subtitle: const Text("22days Remaining"),
              trailing: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SubmissionPage(),));
                  print("Clicked");

                },
                  child: const Icon(Icons.arrow_forward_ios)),
            ),
          )


        ],
      ),);
  }
}
