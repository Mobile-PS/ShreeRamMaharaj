import 'package:flutter/material.dart';
import 'package:maharaj/utils/appbar.dart';
import 'package:maharaj/utils/dummymodel/tab1.dart';
import 'package:maharaj/utils/navigationdrwer.dart';

import '../utils/colors.dart';
import '../utils/row_widget.dart';
import '../utils/styleclass.dart';

class DonationScreen extends StatefulWidget {
  const DonationScreen({super.key});

  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen>with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<DonationTabModel> Images = DonationTabModel.Images;
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
      appBar: customAppbar(title: "देणगी",),
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
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Flex(direction: Axis.horizontal,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: ElevatedButton(

                                  onPressed: () {}, child: Text('ऑफलाइन',style: TextStyle(color: kWhite),),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(kOrange),
                                    //  shape: BorderRadius.all(Radius.circular(10))
                                  ),),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: ElevatedButton(

                                  onPressed: () {}, child: Text('ऑनलाईन',style: TextStyle(color: kWhite),),
                                  style: ButtonStyle(

                                    backgroundColor: MaterialStateProperty.all(kOrange),
                                  ),),
                              ),
                            ),
                          ),


                        ],)
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: 5,
                      itemBuilder: (context,index){return
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                          border: Border.all(color: kgrey)
                        ),
                        child: Column(
                          children: [

                            RowDetails("देणगीदाराचे नाव:","श्री. विश्वजीत कुमार"),
                            RowDetails("फोन नंबर:","9673306466"),
                            RowDetails("ई - मेल:","swamiseva39@gmail.com"),
                            RowDetails("देणगीची रक्कम:","3०००.००"),
                            RowDetails("देणगीचे स्वरूप:","अन्नदान"),
                            RowDetails("वार व तारीख:","शुक्रवार, १६/०९/२०२२"),
                            RowDetails("पावती क्रमांक:","126"),

                          ],
                        ),
                      ),
                    );
                    })
                )



              ],
            ),
          )
        ],
      ),
    );
  }
}
