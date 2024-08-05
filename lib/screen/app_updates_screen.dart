import 'package:flutter/material.dart';
import 'package:maharaj/utils/appbar.dart';
import 'package:maharaj/utils/colors.dart';
import 'package:maharaj/utils/custom_modelbottomsheet.dart';
import 'package:maharaj/utils/navigationdrwer.dart';
import 'package:sliding_switch/sliding_switch.dart';

import '../utils/styleclass.dart';

class AppUpdatesScreen extends StatefulWidget {
  const AppUpdatesScreen({super.key});

  @override
  State<AppUpdatesScreen> createState() => _AppUpdatesScreenState();
}

class _AppUpdatesScreenState extends State<AppUpdatesScreen> {
  int isSelected=2;

  bool setChange= true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(
        title: "ॲपबद्दल",
      ),
      drawer: CustomDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0,left: 8,right: 8),
            child: Card(
              color: kWhite,
              child: ListTile(
                onTap: () {
                  modelAppUpdates();
                },
                title: Text(
                  "ॲपबद्दल",
                  style: TextStyle(color: kOrange),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: kOrange,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0,left: 8,right: 8),
            child: Card(
              color: kWhite,
              child: ListTile(
                onTap: () {
                  LangaugeModelbottomsheet(context, setState);
                },
                title: Text(
                  "भाषा बदला",
                  style: TextStyle(color: kOrange),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: kOrange,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0,left: 8,right: 8),
            child: Card(
              color: kWhite,
              child: ListTile(
                onTap: () {
                  modelFontChange();
                },
                title: Text(
                  "फॉन्ट आकार बदला",
                  style: TextStyle(color: kOrange),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: kOrange,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0,left: 8,right: 8),
            child: Card(
              color: kWhite,
              child: ListTile(
                onTap: () {
                  modelInfo("मदत");
                },
                title: Text(
                  "मदत",
                  style: TextStyle(color: kOrange),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: kOrange,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0,left: 8,right: 8),
            child: Card(
              color: kWhite,
              child: ListTile(
                onTap: () {
                  modelInfo("अटी व शर्ती");

                },
                title: Text(
                  "अटी व शर्ती",
                  style: TextStyle(color: kOrange),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: kOrange,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0,left: 8,right: 8),
            child: Card(
              color: kWhite,
              child: ListTile(
                onTap: () {
                  modelInfo("गोपनीयता धोरण");

                },
                title: Text(
                  "गोपनीयता धोरण",
                  style: TextStyle(color: kOrange),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: kOrange,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0,left: 8,right: 8),
            child: Card(
              color: kWhite,

              child: ListTile(
                onTap: () {},
                title: Text(
                  "सूचना",
                  style: TextStyle(color: kOrange),
                ),
                trailing:SizedBox(
                  width: 20,
                  child: Switch(

                    value: setChange, onChanged: (bool value) { setState(() {
                    setChange= value;
                  }); },),
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
  modelAppUpdates(){
    return  showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),

          ),
        ),
        builder: (BuildContext context) {
          return  StatefulBuilder(
            builder: (BuildContext context, void Function(void Function()) setState) {
              return  DraggableScrollableSheet(
                expand: false,
                initialChildSize:0.5,
                minChildSize: 0.2,
                builder: (BuildContext context, ScrollController scrollController) {
                  return
                    SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                                alignment: Alignment.topCenter,
                                child: Text("ॲपबद्दल",style: FontTextStyle.boldblackText14,textAlign: TextAlign.center,)),
                          ),
                          Divider(),
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:AssetImage('images/Image.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(text: TextSpan(
                                style: TextStyle(color: kBlack),
                                text: "लॉरेम इप्सम डोलर अमेट बसतो, एंड्सेक्ट्यूअर एडिपाइझिंग एलिट. एनीअन कमोडो लिगुला एगेट डोलर. एनीअन मासा . कम सोसिसिस नाटोक पेनाटिबस एट मॅग्निस डिस्प्लुएंट मॉन्टेस, नैस्सेतूर थॉटस मस्क. डोनेक क्वाम फेलिस, अल्ट्रिसीज एनईसी, पेलेंटेस्क यू, प्रीटियम क्विस, सेम. नुला कॉन्सेक्वॅट मासा क्विस एनिम. डोनेक पेडे जस्टो, फ्रिन्जिला वेल, अ ॅलिकेट नेक, व्हल्पुटेट इगेट, आर्कू. इन एनिम जस्टो, रोंकस यूट, इम्परडिएट ए, वेनेटाइस विटा, जस्टो. नुलम डिक्टम फेलिस ई पीड मोलीस प्रीटियम. लॉरेम इप्सम डोलर अमेट बसतो, एंड्सेक्ट्यूअर एडिपाइझिंग एलिट. एनीअन कमोडो लिगुला एगेट डोलर. एनीअन मासा . कम सोसिसिस नाटोक पेनाटिबस एट मॅग्निस डिस्प्लुएंट मॉन्टेस, नैस्सेतूर थॉटस मस्क. डोनेक क्वाम फेलिस, अल्ट्रिसीज एनईसी, पेलेंटेस्क यू, प्रीटियम क्विस, सेम. नुला कॉन्सेक्वॅट मासा क्विस एनिम. डोनेक पेडे जस्टो, फ्रिन्जिला वेल, अ ॅलिकेट नेक, व्हल्पुटेट इगेट, आर्कू. इन एनिम जस्टो, रोंकस यूट, इम्परडिएट ए, वेनेटाइस विटा, जस्टो. नुलम डिक्टम फेलिस ई पीड मोलीस प्रीटियम."
                            )),
                          )

                        ],
                      ),
                    ); },

              );
            },

          );
        });
  }
  modelFontChange(){
    return  showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),

          ),
        ),
        builder: (BuildContext context) {
          return  StatefulBuilder(
            builder: (BuildContext context, void Function(void Function()) setState) {
              return  DraggableScrollableSheet(
                expand: false,
                initialChildSize:0.2,
                minChildSize: 0.2,
                builder: (BuildContext context, ScrollController scrollController) {
                  return
                    SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                                alignment: Alignment.topCenter,
                                child: Text("फॉन्ट आकार बदला",style: FontTextStyle.boldblackText14,textAlign: TextAlign.center,)),
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                                alignment: Alignment.topCenter,
                                child: Text("कृपया आपली फॉन्ट आकार निवडा",style: FontTextStyle.boldgreyText,textAlign: TextAlign.center,)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: (){
                                  setState((){
                                    isSelected =1;

                                  });
                                },
                                child: Container(
                                  width: 80,
                                  decoration: BoxDecoration(shape: BoxShape.rectangle,color: isSelected==1?kOrange:kWhite,borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("लहान",textAlign:TextAlign.center,style: TextStyle(color: isSelected==1?kWhite:kgrey),),
                                  ),
                                ),
                              ), InkWell(
                                onTap: (){
                                  setState((){
                                    isSelected =2;

                                  });
                                },
                                child: Container(
                                  width: 80,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,color: isSelected==2?kOrange:kWhite,
                                  borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("मध्यम",textAlign:TextAlign.center,style: TextStyle(color: isSelected==2?kWhite:kgrey,),),
                                  ),
                                ),
                              ), InkWell(
                                onTap: (){
                                  setState((){
                                    isSelected =3;

                                  });
                                },
                                child: Container(
                                  width: 80,
                                  decoration: BoxDecoration(shape: BoxShape.rectangle,color: isSelected==3?kOrange:kWhite,borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("मोठा",textAlign:TextAlign.center,style: TextStyle(color: isSelected==3?kWhite:kgrey),),
                                  ),
                                ),
                              ),
                            ],
                          )

                        ],
                      ),
                    ); },

              );
            },

          );
        });
  }
  modelInfo(String lable){
    return  showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),

          ),
        ),
        builder: (BuildContext context) {
          return  StatefulBuilder(
            builder: (BuildContext context, void Function(void Function()) setState) {
              return  DraggableScrollableSheet(
                expand: false,
                initialChildSize:0.5,
                minChildSize: 0.2,
                builder: (BuildContext context, ScrollController scrollController) {
                  return
                    SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(lable,style: FontTextStyle.boldblackText14,textAlign: TextAlign.center,)),
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(text: TextSpan(
                                style: TextStyle(color: kBlack),
                                text: "लॉरेम इप्सम डोलर अमेट बसतो, एंड्सेक्ट्यूअर एडिपाइझिंग एलिट. एनीअन कमोडो लिगुला एगेट डोलर. एनीअन मासा . कम सोसिसिस नाटोक पेनाटिबस एट मॅग्निस डिस्प्लुएंट मॉन्टेस, नैस्सेतूर थॉटस मस्क. डोनेक क्वाम फेलिस, अल्ट्रिसीज एनईसी, पेलेंटेस्क यू, प्रीटियम क्विस, सेम. नुला कॉन्सेक्वॅट मासा क्विस एनिम. डोनेक पेडे जस्टो, फ्रिन्जिला वेल, अ ॅलिकेट नेक, व्हल्पुटेट इगेट, आर्कू. इन एनिम जस्टो, रोंकस यूट, इम्परडिएट ए, वेनेटाइस विटा, जस्टो. नुलम डिक्टम फेलिस ई पीड मोलीस प्रीटियम. लॉरेम इप्सम डोलर अमेट बसतो, एंड्सेक्ट्यूअर एडिपाइझिंग एलिट. एनीअन कमोडो लिगुला एगेट डोलर. एनीअन मासा . कम सोसिसिस नाटोक पेनाटिबस एट मॅग्निस डिस्प्लुएंट मॉन्टेस, नैस्सेतूर थॉटस मस्क. डोनेक क्वाम फेलिस, अल्ट्रिसीज एनईसी, पेलेंटेस्क यू, प्रीटियम क्विस, सेम. नुला कॉन्सेक्वॅट मासा क्विस एनिम. डोनेक पेडे जस्टो, फ्रिन्जिला वेल, अ ॅलिकेट नेक, व्हल्पुटेट इगेट, आर्कू. इन एनिम जस्टो, रोंकस यूट, इम्परडिएट ए, वेनेटाइस विटा, जस्टो. नुलम डिक्टम फेलिस ई पीड मोलीस प्रीटियम."
                            )),
                          )

                        ],
                      ),
                    ); },

              );
            },

          );
        });
  }
}
