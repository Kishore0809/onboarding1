import 'package:flutter/material.dart';
import 'package:flutter_onboarding/homepage.dart';
class PhoneNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80,left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Enter Your",style: TextStyle(color: Colors.blue,fontSize: 20),),
              SizedBox(height: 10,),
              Text("Mobile Number",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("we will send you a One Time Password (OTP)",style: TextStyle(fontSize: 10,color: Colors.grey)),
              SizedBox(height: 30,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Text("+91",style: TextStyle(fontSize: 20,color: Colors.grey),),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 150,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter here",
                        border: InputBorder.none,
                      ),
                      // maxLength: 10,
                    ),
                  ),
                ],
              ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 150,),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
              SizedBox(height: 30,),
              Center(
                child: Image(
                  image: AssetImage(
                    'assets/phonenumber.png',
                  ),
                  height: 300.0,
                  width: 300.0,
                ),
              ),
              SizedBox(height: 50,),
               Padding(
                 padding: const EdgeInsets.only(left: 100),
                 child: InkWell(
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
                   },
                   child: Row(
                      children: [
                        Text("more login options",style: TextStyle(fontSize: 13,color: Colors.grey),),
                        SizedBox(width: 15,),
                        Icon(Icons.arrow_upward,color: Colors.grey,)
                      ],
                    ),
                 ),
               ),

            ],
          ),
        ),
      ),
    );
  }
}
