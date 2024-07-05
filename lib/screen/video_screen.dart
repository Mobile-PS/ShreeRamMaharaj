import 'package:flutter/material.dart';

import '../utils/appbar.dart';
import '../utils/colors.dart';
import '../utils/dummymodel/tab1.dart';
import '../utils/navigationdrwer.dart';
import '../utils/styleclass.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen>with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<AudioTabModel> tabs= AudioTabModel.Images;

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
  int isfav= -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(title: "व्हिडिओ",),
      drawer: CustomDrawer(),
      body:Column(
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0),),
                  borderSide: BorderSide(color: kgrey),

                ),
                filled: true,
                contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                fillColor: kWhite,
              ),
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: kgrey, width: 2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ListTile(
                        leading: Image.asset("images/profile.png",width: 48,height: 48,),
                        title:  Text("डमी मजकूर उपलब्ध आहे!",style: FontTextStyle.boldblackText14,),
                        subtitle: Text("डमी मजकूर उपलब्ध आहे!"),
                        trailing: SizedBox(
                          width: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            //direction: Axis.horizontal,
                            children: [
                              Container(child: InkWell(
                                  onTap: (){
                                    setState(() {
                                      isfav= index;

                                    });
                                  },
                                  child: Icon(isfav==index?Icons.favorite_outlined:Icons.favorite_outlined,color: isfav==index?kRed:null,)),),
                              Container(child: Icon(Icons.file_download_outlined),),
                              Container(child: Icon(Icons.more_vert),)
                            ],

                          ),
                        ),
                      )),
                );
              }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),

        foregroundColor: kWhite,
        backgroundColor: kOrange,
        onPressed: () {  },
        child: Image.asset("images/Add.png",width: 40,height: 40,),),
    );
  }
}
