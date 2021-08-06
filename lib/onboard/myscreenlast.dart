import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding/homepage.dart';
import 'package:flutter_onboarding/phonenumber.dart';
class MyScreenLast extends StatefulWidget {
  @override
  _MyScreenLastState createState() => _MyScreenLastState();
}

class _MyScreenLastState extends State<MyScreenLast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.only(top: 70,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image(
                image: AssetImage(
                  'assets/groupc.png',
                ),
                height: 300.0,
                width: 300.0,
              ),
            ),
            SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Explore like a',
                style: TextStyle(fontSize: 20,color: Colors.blue),
                // style: kTitleStyle,
              ),
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Ninja!',
                style: TextStyle(fontSize: 40,color: Colors.indigo),
                // style: kTitleStyle,
              ),
            ),
            SizedBox(height: 30,),
            ListTile(
              leading: VerticalDivider(
                thickness: 5,
                color: Colors.blue,
              ),
              title:Text(
                'Read personalized careers based on your hobbies/ intrests.',style: TextStyle(color: Colors.grey,fontSize: 15),
                // style: kSubtitleStyle,
              ),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: VerticalDivider(
                thickness: 5,
                color: Colors.blue,
              ),
              title:Text(
                'Stream selection is now more fun easy,take personality test & chat'
                    'with experts in quick steps',style: TextStyle(color: Colors.grey,fontSize: 15),
                // style: kSubtitleStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50,left: 280),
              child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => PhoneNumber()));
                  },
                child: Container(
                  height: 45,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      width: 1.0,
                      // assign the color to the border color
                      color: Colors.white,
                    ),
                  ),
                  child: Center(
                    child: Text("Next",style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}