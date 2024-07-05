import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maharaj/screen/Auth/otp_screen.dart';
import 'package:maharaj/utils/colors.dart';
import 'package:maharaj/utils/custom_textfield_widget.dart';
import 'package:maharaj/utils/styleclass.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String selectedCategory="(+91) India";
  TextEditingController _phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kOrange,
        title: Text("Login",style: FontTextStyle.normalText,),
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
                height: Get.height/2.3,
                child: Card(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 20,),
                        child: Text("Select Country",textAlign: TextAlign.left,style: FontTextStyle.normalgreyText,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 2.0, color: kgrey),
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: DropdownButton<String>(
                              items: <String>[
                                '(+91) India',
                                '(+91) India',
                                '(+91) India',
                                '(+91) India'
                              ].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(value),
                                  ),
                                );
                              }).toList(),
                              hint: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(selectedCategory.isEmpty
                                    ? 'Category Food'
                                    : selectedCategory),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              underline: SizedBox(),
                              isExpanded: true,
                              onChanged: (value) {
                                if (value != null) {
                                  setState(() {
                                    selectedCategory = value;
                                  });
                                }
                              },
                              
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Mobile Number",textAlign: TextAlign.left,style: FontTextStyle.normalgreyText),
                      ),
                      CustomTextFieldOutline(label: "Enter Your Mobile Number", controller: _phone ),
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
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text("We will Send you One Time Password (OTP)",style: FontTextStyle.boldblackText14,textAlign: TextAlign.center,)),
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
