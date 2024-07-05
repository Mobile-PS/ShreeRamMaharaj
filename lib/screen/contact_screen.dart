import 'package:flutter/material.dart';
import 'package:maharaj/utils/appbar.dart';
import 'package:maharaj/utils/dummymodel/tab1.dart';
import 'package:maharaj/utils/navigationdrwer.dart';

import '../utils/colors.dart';
import '../utils/styleclass.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<ContactTabModel> Images = ContactTabModel.Images;
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
      appBar: customAppbar(title: "संपर्क",),
    drawer: CustomDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: DefaultTabController(
                length: 3,
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
          Expanded(
            child: TabBarView(
              physics: ScrollPhysics(),
              controller: _tabController,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                     ListTile(leading: Icon(Icons.home),
                     title: Text("Dummy Text"),),
                      ListTile(leading: Icon(Icons.call),
                     title: RichText(text: TextSpan(text: "12345",style: TextStyle(color: kOrange,),children: <TextSpan>[
                       TextSpan(text: " Dummy Text",style: FontTextStyle.normalblackText12,)
                     ]),
                     )),
                      ListTile(leading: Icon(Icons.call),
                     title: RichText(text: TextSpan(text: "12345",style: TextStyle(color: kOrange,),children: <TextSpan>[
                       TextSpan(text: " Dummy Text",style: FontTextStyle.normalblackText12,)
                     ]),
                     )),
                      ListTile(leading: Icon(Icons.call),
                     title: RichText(text: TextSpan(text: "12345",style: TextStyle(color: kOrange,),children: <TextSpan>[
                       TextSpan(text: " Dummy Text",style: FontTextStyle.normalblackText12,)
                     ]),
                     )),
                      ListTile(leading: Icon(Icons.email),
                        title: Text("swamiseva39@gmail.com"),),
                      ListTile(leading: Icon(Icons.email),
                        title: Text("swamiseva39@gmail.com"),),
                    ],
                  ),
                ),


              ],
            ),
          )
        ],
      ),
    );
  }
}
