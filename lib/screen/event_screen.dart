import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:maharaj/screen/events_details_screen.dart';
import 'package:maharaj/utils/appbar.dart';
import 'package:maharaj/utils/navigationdrwer.dart';

import '../utils/colors.dart';
import '../utils/dummymodel/tab1.dart';
import '../utils/styleclass.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<EventTabModel> tabs= EventTabModel.Images;

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
      appBar: customAppbar(title: "उत्सव आणि कार्यक्रम",),
      drawer: CustomDrawer(),
      body:  Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: DefaultTabController(
                length: tabs.length,
                child: Material(
                  color: kOrange,
                  child: TabBar(
                    controller: _tabController,

                    indicatorColor: kWhite,
                    labelColor: kBlack,
                    // indicator: BoxDecoration(color: kOrange),
                    indicatorWeight: 4,
                    indicatorSize: TabBarIndicatorSize.tab,
                     labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
                    tabs: tabs.map((tab) => Tab(
                      child: Text(
                        tab.name,
                        textAlign: TextAlign.center,
                        style: FontTextStyle.boldText14,
                      ),
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
                SizedBox(
                  height: Get.height,
                  width: Get.width,
                  child: ListView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: (){
                            Get.to(
                              curve: Curves.easeInBack,
                              transition: Transition.leftToRight,
                                  () => EventDetailsScreen(),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0,left: 8,right: 8),
                            child: Card(
                              color: kWhite,
                              child: ListTile(
                                  leading: Image.asset("images/profile.png"),
                                  title: Text("महाराज संकल्प जप",style: TextStyle(color: kOrange),),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("१०/१०/२०२२, ०६.०० ते १०:३०",style: FontTextStyle.normalgreyText),
                                      RichText(text: TextSpan(text: "१०/१०/२०२२, ०६.०० ते १०:३०",style: FontTextStyle.normalgreyText,children: <TextSpan>[
                                        //   TextSpan(text: "पुढे पहा...",style: TextStyle(color: kOrange))
                                      ])),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("कोल्हापूर"),
                                          Text("पुढे पहा...",style: TextStyle(color: kOrange),)

                                        ],
                                      )
                                    ],
                                  )
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: Get.height,
                  width: Get.width,
                  child: ListView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: (){
                            Get.to(
                              curve: Curves.easeInBack,
                              transition: Transition.leftToRight,
                                  () => EventDetailsScreen(),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0,left: 8,right: 8),
                            child: Card(
                              color: kWhite,
                              child: ListTile(
                                  leading: Image.asset("images/profile.png"),
                                  title: Text("महाराज संकल्प जप",style: TextStyle(color: kOrange),),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("१०/१०/२०२२, ०६.०० ते १०:३०",style: FontTextStyle.normalgreyText),
                                      RichText(text: TextSpan(text: "१०/१०/२०२२, ०६.०० ते १०:३०",style: FontTextStyle.normalgreyText,children: <TextSpan>[
                                        //   TextSpan(text: "पुढे पहा...",style: TextStyle(color: kOrange))
                                      ])),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("कोल्हापूर"),
                                          Text("पुढे पहा...",style: TextStyle(color: kOrange),)

                                        ],
                                      )
                                    ],
                                  )
                              ),
                            ),
                          ),
                        );
                      }),
                ),




              ],
            ),
          )

        ],
      ),
    );
  }
}
