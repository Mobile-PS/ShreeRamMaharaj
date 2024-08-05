import 'package:flutter/material.dart';
import 'package:maharaj/utils/appbar.dart';
import 'package:maharaj/utils/colors.dart';
import 'package:maharaj/utils/dummymodel/tab1.dart';
import 'package:maharaj/utils/navigationdrwer.dart';
import 'package:maharaj/utils/styleclass.dart';

class AdrvertiseScreen extends StatefulWidget {
  const AdrvertiseScreen({super.key});

  @override
  State<AdrvertiseScreen> createState() => _AdrvertiseScreenState();
}

class _AdrvertiseScreenState extends State<AdrvertiseScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<AdvertiseTabModel> tabs= AdvertiseTabModel.Images;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(title: "प्रकाशन",),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: DefaultTabController(
                  length: tabs.length,
                  child: Material(
                    color: kOrange,
                    child: TabBar(
                      controller: _tabController,
                      tabAlignment: TabAlignment.start,
                      isScrollable: true,
                      indicatorColor: kWhite,
                      labelColor: kBlack,
                      // indicator: BoxDecoration(color: kOrange),
                      indicatorWeight: 4,
                      indicatorSize: TabBarIndicatorSize.tab,
                      // labelPadding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 13),
                      tabs: tabs.map((tab) => Tab(
                        child: SizedBox(
                            width: 60,
                            child: Text(
                              tab.name,
                              textAlign: TextAlign.center,
                              style: FontTextStyle.boldText14,
                            )),
                        //  text: tab.name,
                        // icon: Container(child: Icon(tab.langImage)),
                      )).toList(),
                    ),
                  )),
            ),
            ListView.builder(
              itemCount: 10,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context,index){
              return InkWell(
                onTap: (){
                  modelBottomSheet();
                },
                child: Card(
                  child: Container(
                    child: ListTile(
                      leading: Image.asset("images/profile.png"),
                      title: Text("महाराज",style: TextStyle(color: kOrange),),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("श्रीराम महाराज",style: FontTextStyle.normalgreyText),
                        RichText(text: TextSpan(text: "ज्ञानदेवांच्यानंतर अनेक ठिकाणी या परंपरेच्या शाखा वाढल्या. हीच परंपरा देवनाथांपासून होऊन ...",style: FontTextStyle.normalgreyText,children: <TextSpan>[
                          TextSpan(text: "पुढे पहा...",style: TextStyle(color: kOrange))
                        ])),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(onPressed: (){}, child: Text("₹ ६०.००",style: FontTextStyle.normalText12,),
                                style: ElevatedButton.styleFrom(
                                backgroundColor: kOrange,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.zero)))),
                            Row(
                              children: [
                                Image.asset("images/Pdf.png",width: 30,height: 30,),
                                Text("Download",style: TextStyle(color: kOrange),)
                              ],
                            )
                          ],
                        )
                      ],),
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
  modelBottomSheet(){
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
                                child: Text("तपशील",style: FontTextStyle.boldblackText14,textAlign: TextAlign.center,)),
                          ),
                          Divider(),
                          Container(
                            child: ListTile(
                              leading: Image.asset("images/profile.png"),
                              title: Text("महाराज",style: TextStyle(color: kOrange),),
                              subtitle: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text("श्रीराम महाराज",style: FontTextStyle.normalgreyText),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(onPressed: (){}, child: Text("₹ ६०.००",style: FontTextStyle.normalText12,),
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: kOrange,
                                              shape: const RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.all(Radius.zero)))),
                                      Container(
                                        color: kOrange,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Image.asset("images/Pdf.png",width: 30,height: 30,),
                                              Text("Download",style: TextStyle(color: kWhite),)
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],),
                            ),
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
}
