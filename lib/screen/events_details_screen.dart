import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maharaj/japa_screen.dart';
import 'package:maharaj/screen/feedback_screen.dart';
import 'package:maharaj/utils/appbar.dart';

import '../utils/colors.dart';
import '../utils/styleclass.dart';

class EventDetailsScreen extends StatefulWidget {
  const EventDetailsScreen({super.key});

  @override
  State<EventDetailsScreen> createState() => _EventDetailsScreenState();
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            /*  Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => JapaScreen(),
              );*/
              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => FeedbackScreen(),
              );
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
      body:   SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/Logo.png",height: 200,width: Get.width,),

            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8),
              child: Card(
                color: kgreysmooth,
                child: Flex(

                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Chip(
                            backgroundColor: kOrange, // hardcoded color

                            label: Text("वार व दिनांक",style: FontTextStyle.boldblackText14,)),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                            text: TextSpan(
                                text:"मंगळवार, दि. ११/१०/२०२२, ०६.०० ते १०:३०",
                                style: FontTextStyle.boldblackText)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8),
              child: Card(
                color: kgreysmooth,
                child: Flex(

                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Chip(
                            backgroundColor: kOrange, // hardcoded color

                            label: Text("ठिकाण",style: FontTextStyle.boldblackText14,)),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                            text: TextSpan(
                                text:"कोल्हापूर",
                                style: FontTextStyle.boldblackText)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8),
              child: Card(
                color: kgreysmooth,
                child: Flex(

                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Chip(
                            backgroundColor: kOrange, // hardcoded color

                            label: Text("अतिथी",style: FontTextStyle.boldblackText14,)),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                            text: TextSpan(
                                text:"प.पू. सद्गुरू श्रीराम महाराज",
                                style: FontTextStyle.boldblackText)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8),
              child: Card(
                color: kgreysmooth,
                child: Flex(

                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Chip(
                            backgroundColor: kOrange, // hardcoded color

                            label: Text("माहिती",style: FontTextStyle.boldblackText14,)),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                            text: TextSpan(
                                text:"सकाळी परंपरेतील श्री सद्गुरूंची अष्टके श्री ज्ञानेश्वरी (किमान ५० ओव्या ) सद्गुरू श्री दादा महाराज जप सद्गुरू श्री विश्वनाथ महाराज जप पसायदान संध्याकाळी श्री वानरगीता श्री दत्तस्तवस्तोत्र श्री घोराष्टक श्री स्तवनस्तोत्र - नमनाच्या ओव्या , महालक्ष्मी अष्टक (जेवढ्याजास्त वेळा जमेल तेवढे ) श्री रुक्मांगदस्वामी महाराज विरचीत महामारी स्तोत्रतव रुक्ममुनी म्हणे सकळासी । तुम्ही चिंता न करावी मानसी। ऐसे अभय देऊनी शिष्यजनासी । बैसविले स्वगृहीं निर्भय।।",
                                style: FontTextStyle.boldblackText)),
                      ),
                    ),
                  ],
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
