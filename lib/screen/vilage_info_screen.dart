import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maharaj/utils/appbar.dart';
import 'package:maharaj/utils/navigationdrwer.dart';

import '../utils/ExpnasionTile.dart';
import '../utils/colors.dart';
import '../utils/dummymodel/tab1.dart';
import '../utils/styleclass.dart';

class InfoVilageScreen extends StatefulWidget {
  const InfoVilageScreen({super.key});

  @override
  State<InfoVilageScreen> createState() => _InfoVilageScreenState();
}

class _InfoVilageScreenState extends State<InfoVilageScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<Tab3Model> Images = Tab3Model.Images;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: Images.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(title: "बड़वाह माहीति",),
      drawer: CustomDrawer(), body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: DefaultTabController(
                length: 2,
                child: Material(
                  color: kOrange,
                  child: TabBar(
                    controller: _tabController,
                    // tabAlignment: TabAlignment.start,
                    // isScrollable: true,
                    indicatorColor: kWhite,
                    labelColor: kBlack,
                    // indicator: BoxDecoration(color: kOrange),
                    indicatorWeight: 4,
                    indicatorSize: TabBarIndicatorSize.tab,
                    // labelPadding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 13),
                    tabs: Images.map((tab) => Tab(
                      child: SizedBox(
                          width: 60,
                          child: FittedBox(
                            child: Text(
                              tab.name,
                              textAlign: TextAlign.center,
                              style: FontTextStyle.boldText14,
                            ),
                          )),
                      //  text: tab.name,
                      // icon: Container(child: Icon(tab.langImage)),
                    )).toList(),
                  ),
                )),
          ),
          Expanded(
            child: TabBarView(
              physics: ScrollPhysics(),
              controller: _tabController,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset("images/Image.png",height: 200,width: Get.width,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                            text: TextSpan(
                                text:
                                "लॉरेम इप्सम डोलर अमेट बसतो, एंड्सेक्ट्यूअर एडिपाइझिंग एलिट. एनीअन कमोडो लिगुला एगेट डोलर. एनीअन मासा . कम सोसिसिस नाटोक पेनाटिबस एट मॅग्निस डिस्प्लुएंट मॉन्टेस, नैस्सेतूर थॉटस मस्क. डोनेक क्वाम फेलिस, अल्ट्रिसीज एनईसी, पेलेंटेस्क यू, प्रीटियम क्विस, सेम. नुला कॉन्सेक्वॅट मासा क्विस एनिम. डोनेक पेडे जस्टो, फ्रिन्जिला वेल, अ ॅलिकेट नेक, व्हल्पुटेट इगेट, आर्कू. इन एनिम जस्टो, रोंकस यूट, इम्परडिएट ए, वेनेटाइस विटा, जस्टो. नुलम डिक्टम फेलिस ई पीड मोलीस प्रीटियम. लॉरेम इप्सम डोलर अमेट बसतो, एंड्सेक्ट्यूअर एडिपाइझिंग एलिट. एनीअन कमोडो लिगुला एगेट डोलर. एनीअन मासा . कम सोसिसिस नाटोक पेनाटिबस एट मॅग्निस डिस्प्लुएंट मॉन्टेस, नैस्सेतूर थॉटस मस्क. डोनेक क्वाम फेलिस, अल्ट्रिसीज एनईसी, पेलेंटेस्क यू, प्रीटियम क्विस, सेम. नुला कॉन्सेक्वॅट मासा क्विस एनिम. डोनेक पेडे जस्टो, फ्रिन्जिला वेल, अ ॅलिकेट नेक, व्हल्पुटेट इगेट, आर्कू. इन एनिम जस्टो, रोंकस यूट, इम्परडिएट ए, वेनेटाइस विटा, जस्टो. नुलम डिक्टम फेलिस ई पीड मोलीस प्रीटियम. लॉरेम इप्सम डोलर अमेट बसतो, एंड्सेक्ट्यूअर एडिपाइझिंग एलिट. एनीअन कमोडो लिगुला एगेट डोलर. एनीअन मासा . कम सोसिसिस नाटोक पेनाटिबस एट मॅग्निस डिस्प्लुएंट मॉन्टेस, नैस्सेतूर थॉटस मस्क. डोनेक क्वाम फेलिस, अल्ट्रिसीज एनईसी, पेलेंटेस्क यू, प्रीटियम क्विस, सेम. नुला कॉन्सेक्वॅट मासा क्विस एनिम. डोनेक पेडे जस्टो, फ्रिन्जिला वेल, अ ॅलिकेट नेक, व्हल्पुटेट इगेट, आर्कू. इन एनिम जस्टो, रोंकस यूट, इम्परडिएट ए, वेनेटाइस विटा, जस्टो. नुलम डिक्टम फेलिस ई पीड मोलीस प्रीटियम. लॉरेम इप्सम डोलर अमेट बसतो, एंड्सेक्ट्यूअर एडिपाइझिंग एलिट. एनीअन कमोडो लिगुला एगेट डोलर. एनीअन मासा . कम सोसिसिस नाटोक पेनाटिबस एट मॅग्निस डिस्प्लुएंट मॉन्टेस, नैस्सेतूर थॉटस मस्क. डोनेक क्वाम फेलिस, अल्ट्रिसीज एनईसी, पेलेंटेस्क यू, प्रीटियम क्विस, सेम. नुला कॉन्सेक्वॅट मासा क्विस एनिम. डोनेक पेडे जस्टो, फ्रिन्जिला वेल, अ ॅलिकेट नेक, व्हल्पुटेट इगेट, आर्कू. इन एनिम जस्टो, रोंकस यूट, इम्परडिएट ए, वेनेटाइस विटा, जस्टो. नुलम डिक्टम फेलिस ई पीड मोलीस प्रीटियम. लॉरेम इप्सम डोलर अमेट बसतो, एंड्सेक्ट्यूअर एडिपाइझिंग एलिट. एनीअन कमोडो लिगुला एगेट डोलर. एनीअन मासा . कम सोसिसिस नाटोक पेनाटिबस एट मॅग्निस डिस्प्लुएंट मॉन्टेस, नैस्सेतूर थॉटस मस्क. डोनेक क्वाम फेलिस, अल्ट्रिसीज एनईसी, पेलेंटेस्क यू, प्रीटियम क्विस, सेम. नुला कॉन्सेक्वॅट मासा क्विस एनिम. डोनेक पेडे जस्टो, फ्रिन्जिला वेल, अ ॅलिकेट नेक, व्हल्पुटेट इगेट, आर्कू. इन एनिम जस्टो, रोंकस यूट, इम्परडिएट ए, वेनेटाइस विटा, जस्टो. नुलम डिक्टम फेलिस ई पीड मोलीस प्रीटियम. लॉरेम इप्सम डोलर अमेट बसतो, एंड्सेक्ट्यूअर एडिपाइझिंग एलिट. एनीअन कमोडो लिगुला एगेट डोलर. एनीअन मासा . कम सोसिसिस नाटोक पेनाटिबस एट मॅग्निस डिस्प्लुएंट मॉन्टेस, नैस्सेतूर थॉटस मस्क. डोनेक क्वाम फेलिस, अल्ट्रिसीज एनईसी, पेलेंटेस्क यू, प्रीटियम क्विस, सेम. नुला कॉन्सेक्वॅट मासा क्विस एनिम. डोनेक पेडे जस्टो, फ्रिन्जिला वेल, अ ॅलिकेट नेक, व्हल्पुटेट इगेट, आर्कू. इन एनिम जस्टो, रोंकस यूट, इम्परडिएट ए, वेनेटाइस विटा, जस्टो. नुलम डिक्टम फेलिस ई पीड मोलीस प्रीटियम.",
                                style: FontTextStyle.boldblackText)),
                      ),
                    ],
                  ),
                ),


                ExpansionTileWithBorder(),

              ],
            ),
          )
        ])
    );
  }
}
