import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_onboarding/homepage2.dart';
import 'package:flutter_otp_timer/flutter_otp_timer.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sms_autofill/sms_autofill.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int secondsRemaining = 30;
  bool enableResend = false;
  late Timer timer;
  late TextEditingController controller;
  @override
  initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (secondsRemaining != 0) {
        setState(() {
          secondsRemaining--;
        });
      } else {
        setState(() {
          enableResend = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(
      //   leading: Icon(Icons.arrow_back_ios_outlined,color: Colors.grey,),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50,left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.arrow_back_ios,color: Colors.grey,),
              SizedBox(height: 50,),
              Text("Enter OTP",style: TextStyle(color: Colors.black,fontSize: 25),),
              SizedBox(height: 30,),
              Text("please neter the verification code sent to 9003644045",style: TextStyle(
                color: Colors.grey,
                fontSize: 15
              ),),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(right: 80,left: 30),
                child: PinFieldAutoFill(
                  codeLength: 6,
                  onCodeChanged: (val){
                    print(val);
                  },
                  // controller: controller,
                ),
              ),
          // SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(top: 50,left: 80),
            child: Row(
              children: [
                FlatButton(
                  child: Text('Resend Code in',style: TextStyle(color: Colors.grey),),
                  onPressed: enableResend ? _resendCode : null,
                ),
                // Text("in",style: TextStyle(color: Colors.grey),),
                Text(
                  '00: $secondsRemaining',
                  style: TextStyle(color: Colors.blue,),
                )
              ],
            ),
          ),
              Center(
                child: InkWell(
                  onTap: (){
                        // if(controller == 858585){
                        //   print("success");
                        //   Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage2()));
                        // }else{
                        //   Fluttertoast.showToast(
                        //       msg: 'OTP Not Matched',
                        //       toastLength: Toast.LENGTH_SHORT,
                        //       gravity: ToastGravity.CENTER,
                        //       timeInSecForIos: 1,
                        //       backgroundColor: Colors.red,
                        //       textColor: Colors.white
                        //   );
                        // }
                  },
                  child: Image(
                    image: AssetImage(
                      'assets/Fingerprint.png',
                    ),
                    height: 300.0,
                    width: 300.0,
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: InkWell(
                  onTap: (){
                    // Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
                    showModelPhone();
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
        )
      )
    );
  }
  void _resendCode() {
    //other code here
    setState((){
      secondsRemaining = 30;
      enableResend = false;
    });
  }

  @override
  dispose(){
    timer.cancel();
    super.dispose();
  }

  void showModelPhone() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context){
          return SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom
                ),
                color: Color(0xFF737373),
                //       height: 300,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: const Radius.circular(20),topRight: const Radius.circular(20)),
                      color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text("Edit Phone Number",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Divider(color: Colors.black,
                        indent: 20,
                        // height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: 380,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                              color: Colors.grey[200]
                          ),
                          child: ListTile(
                            title: Text("Phone Number"),
                            subtitle: TextField (
                              // controller: phonenumber,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '9003644045'
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40,left: 150),
                        child: InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                color: Colors.red
                            ),
                            child: Center(child: Text('Update',style: TextStyle(color: Colors.white),)),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,)
                    ],
                  ),
                ),
              ));
        });
  }

}
