import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../../utils/styleclass.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kOrange,
        title: Text("Enter Verification Code",style: FontTextStyle.normalText,),
        iconTheme: const IconThemeData(
          size: 30, //change size on your need
          color: kWhite, //change color on your need
        ),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              Container(
                width: MediaQuery.of(context).size.width,
                height: Get.height/2,
                color: kOrange,
              ),

            ],
          ),

          Center(
            child: Padding(

              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: Get.height/3,
                child: Card(
                  child:Column(
                   // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("We have sent OTP on your number",style: FontTextStyle.boldblackText14,textAlign: TextAlign.start,),
                      ),
                      OtpTextField(
                        numberOfFields: 5,
                        borderColor:kgrey,
                        showCursor: true,
                        alignment: Alignment.centerLeft,
                        enabledBorderColor: kgrey,
                        disabledBorderColor: kgrey,
                        //set to true to show as box or false to show as dash
                        showFieldAsBox: true,
                        //runs when a code is typed in
                        onCodeChanged: (String code) {
                          //handle validation or checks here
                        },

                        //runs when every textfield is filled
                        onSubmit: (String verificationCode){
                          showDialog(
                              context: context,
                              builder: (context){
                                return AlertDialog(
                                  title: Text("Verification Code"),
                                  content: Text('Code entered is $verificationCode'),
                                );
                              }
                          );
                        }, // end onSubmit
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: Get.width,
                          child: ElevatedButton(onPressed: (){
                            Get.to(
                              curve: Curves.easeInBack,
                              transition: Transition.leftToRight,
                                  () => OTPScreen(),
                            );
                          }, child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("GET OTP",style: FontTextStyle.normalText,),
                          ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: kOrange,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(3))))),
                        ),
                      ),

                     Padding(
                       padding: const EdgeInsets.only(left: 10.0,top: 10,),
                       child: RichText(text: TextSpan(text: "Didn't receive a OTP?",style: FontTextStyle.normalblackText12,children: <TextSpan>[
                         TextSpan(text: " Resend OTP",style:TextStyle(decoration: TextDecoration.underline,color: kBlack,fontWeight: FontWeight.bold,fontSize: 14))
                       ]),),
                     )
                    ],
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
