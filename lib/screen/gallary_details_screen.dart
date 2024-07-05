import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maharaj/utils/appbar.dart';
import 'package:maharaj/utils/dummymodel/tab1.dart';
import 'package:maharaj/utils/navigationdrwer.dart';

import '../utils/colors.dart';
import '../utils/dummymodel/dashboard_model.dart';
import '../utils/styleclass.dart';
import 'images_list_screen.dart';

class GallaryDetailScreen extends StatefulWidget {
  const GallaryDetailScreen({super.key});

  @override
  State<GallaryDetailScreen> createState() => _GallaryDetailScreenState();
}

class _GallaryDetailScreenState extends State<GallaryDetailScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<GallaryTabModel> tabs= GallaryTabModel.Images;
  List<Dashboardimages> Images = Dashboardimages.Img;

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
      appBar: customAppbar(title: "गॅलरी",),
      drawer: CustomDrawer(),
      body: Column(
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
                    // labelPadding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 13),
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
                GridView.count(
                  // controller: Scollcontroller,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    // physics: BouncingScrollPhysics,
                    crossAxisCount: 2,
                    addRepaintBoundaries: false,
                    //padding: const EdgeInsets.all(16.0),
                    childAspectRatio: 14.0 / 9.0,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 1,
                    children: PhotoWidget(Images) // Replace
                ),
                GridView.count(
                  // controller: Scollcontroller,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    // physics: BouncingScrollPhysics,
                    crossAxisCount: 2,
                    addRepaintBoundaries: false,
                    //padding: const EdgeInsets.all(16.0),
                    childAspectRatio: 14.0 / 9.0,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 1,
                    children: PhotoWidget(Images) // Replace
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
  List<Container> PhotoWidget(List<Dashboardimages> infolist) {
    List<Container> cards = List.generate(
      infolist.length,
          (int index) {
        print(infolist.length);
        return Container(
        //  padding: EdgeInsets.all(4),
          //height: 20,
          decoration: BoxDecoration(
            border: Border.all(color: kWhite),
          ),
          child: InkWell(
            onTap: () {
              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => PhotoViewScreen(),
              );
            },
            child: Column(
              children: [

                Image.asset(
                  infolist[index].images.toString(),
                  height: 110,
                  width: 204,
                  fit: BoxFit.cover,
                  //  color: kbookblue,
                ),
              ],
            ),
          ),
        );
      },
    );
    return cards;
  }
}
