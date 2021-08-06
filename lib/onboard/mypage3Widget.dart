import "package:flutter/material.dart";
class MyPage3Widget extends StatefulWidget {
  @override
  _MyPage3WidgetState createState() => _MyPage3WidgetState();
}

class _MyPage3WidgetState extends State<MyPage3Widget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.only(top: 70,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image(
                image: AssetImage(
                  'assets/groupa.png',
                ),
                height: 300.0,
                width: 300.0,
              ),
            ),
            SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Choose like a',
                style: TextStyle(fontSize: 20,color: Colors.white),
                // style: kTitleStyle,
              ),
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Pro!',
                style: TextStyle(fontSize: 40,color: Colors.indigo),
                // style: kTitleStyle,
              ),
            ),
            SizedBox(height: 30,),
            ListTile(
              leading: VerticalDivider(
                thickness: 5,
                color: Colors.indigo,
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
                color: Colors.indigo,
              ),
              title:Text(
                'Stream selection is now more fun easy,take personality test & chat'
                    'with experts in quick steps',style: TextStyle(color: Colors.grey,fontSize: 15),
                // style: kSubtitleStyle,
              ),
            ),

          ],
        ),
      ),
    );
  }
}