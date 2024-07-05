import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maharaj/screen/pooja_Details.dart';
import 'package:maharaj/utils/appbar.dart';
import 'package:maharaj/utils/colors.dart';
import 'package:maharaj/utils/navigationdrwer.dart';
import 'package:maharaj/utils/styleclass.dart';

class PreviousPoojaScreen extends StatefulWidget {
  const PreviousPoojaScreen({super.key});

  @override
  State<PreviousPoojaScreen> createState() => _PreviousPoojaScreenState();
}

class _PreviousPoojaScreenState extends State<PreviousPoojaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(title: "मागिल पूजा",),
      drawer: CustomDrawer(),
      body:  _buildBody() ,
    );
  }
  Widget _buildBody() {
    return GridView.builder(
        itemCount: 4,
        itemBuilder: (context,int){
          return InkWell(
            onTap: (){
              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => PoojaDetailsScreen(name: "शुक्रवार दि. १६/०९/२०२२",),
              );
            },
            child: Stack(
                children: <Widget> [
                   Image.asset("images/profile.png"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: Get.width,
                            color: Colors.black12,
                              height: 40,
                              child: Column(

                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("शुक्रवार दि. १६/०९/२०२२",textAlign: TextAlign.center,style: FontTextStyle.normalText12),
                                  RichText(text: TextSpan(text:"समाधी मंदिरातून भक्तनिवासापर्यंत",style: FontTextStyle.normalText12 ))
                                  //Text("समाधी मंदिरातून भक्तनिवासापर्यंत",textAlign: TextAlign.center,),
                                ],
                              )),
                        )),
                  ),
                ]
            ),
          );
        },  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:  2 ),

    );
  }
}
