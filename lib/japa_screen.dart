import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:maharaj/utils/colors.dart';

import 'utils/styleclass.dart';

class JapaScreen extends StatefulWidget {
  const JapaScreen({super.key});

  @override
  State<JapaScreen> createState() => _JapaScreenState();
}

class _JapaScreenState extends State<JapaScreen> {
  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kWhite,
        shape: CircleBorder(),
        onPressed: () {  },
        child: Icon(Icons.add,color: kOrange,),

      ),
      appBar:  AppBar(
        backgroundColor: kOrange,
        //  leading: Icon(Icons.account_circle),
        iconTheme: const IconThemeData(
          size: 30, //change size on your need
          color: kWhite, //change color on your need
        ),
        title: Row(
          children: [
            Icon(Icons.account_circle,size: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("श्रीराम महाराज संकल्प जप",style: FontTextStyle.normalText,),
            ),
          ],
        ),
        actions: [
          InkWell(
            onTap: (){

            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kWhite
                ),
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('स्टार्ट',textAlign: TextAlign.center,style: TextStyle(color: kOrange,fontSize: 12),),
                ),

              ),
            ),
          )
          /*ElevatedButton(

            onPressed: () {}, child: Text('स्टार्ट',style: TextStyle(color: kOrange,fontSize: 12),),
            style: ElevatedButton.styleFrom(

              backgroundColor: kWhite,
                shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero))
            ),)*/


        ],
      ),
      body: Stack(
        children: [
          Container(color: kOrange,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: Get.height/5.5,
              child: Card(
                color: kWhite,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Flex(direction: Axis.horizontal,children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Text("पूर्ण जप",style: TextStyle(color: kOrange)),
                              Text("101")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                            child: VerticalDivider()),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Text("संकल्प (जप)",style: TextStyle(color: kOrange)),
                              Text("१३००००००१")
                            ],
                          ),
                        ),
                        SizedBox(
                            height: 30,
                            child: VerticalDivider()),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Text("बाकी जप",style: TextStyle(color: kOrange)),
                              Text("१२९९९९९००")
                            ],
                          ),
                        ),
                      ],),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Flex(direction: Axis.horizontal,children: [

                          Expanded(
                            flex: 4,
                            child:   Text("उत्सवकारातील जप संख्या :",style: TextStyle(color: kOrange),),
                          ),

                          Expanded(
                            flex: 4,
                            child:   Text("१०१",style: TextStyle(color: kOrange)),
                          ),
                        ],),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Center(child: Image.asset("images/logo1.png",width: 200,height: 200,)),
      Positioned(
        bottom: 100,
          left: Get.width/2,
          right: Get.width/2,
          child: Text(_itemCount.toString(),style:FontTextStyle.normalText,)),
          Positioned(
            bottom: 10,
            left: Get.width/3,
            right: Get.width/3,
            child: ElevatedButton(


              onPressed: () {
                setState(() {
                  _itemCount++;

                });
              }, child: Text('Tap Here',style: TextStyle(color: kOrange),),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kWhite),
                //  shape: BorderRadius.all(Radius.circular(10))
              ),),
          ),
        ],
      ),
    );
  }
}
