import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maharaj/screen/gallary_details_screen.dart';
import 'package:maharaj/utils/appbar.dart';
import 'package:maharaj/utils/navigationdrwer.dart';
import 'package:maharaj/utils/styleclass.dart';

import '../utils/colors.dart';
import '../utils/dummymodel/dashboard_model.dart';

class GallaryScreen extends StatefulWidget {
  const GallaryScreen({super.key});

  @override
  State<GallaryScreen> createState() => _GallaryScreenState();
}

class _GallaryScreenState extends State<GallaryScreen> {
  List<String> imgList1 = [
    "images/Image.png",
    "images/Image.png",
    "images/Image.png"
  ];
  List<Dashboardimages> Images = Dashboardimages.Img;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(title: "गॅलरी",),
      drawer: CustomDrawer(),
      body: Column(
        children: [
          GridView.count(
            // controller: Scollcontroller,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              // physics: BouncingScrollPhysics,
              crossAxisCount: 2,
              addRepaintBoundaries: false,
              //padding: const EdgeInsets.all(16.0),
              childAspectRatio: 11.0 / 9.0,
               mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: _buildGridCards1(Images) // Replace
          ),
        ],
      ),

    );
  }
  List<Container> _buildGridCards1(List<Dashboardimages> infolist) {
    List<Container> cards = List.generate(
      infolist.length,
          (int index) {
        print(infolist.length);
        return Container(
          padding: EdgeInsets.all(4),
          //height: 20,
          decoration: BoxDecoration(
            border: Border.all(color: kWhite),
          ),
          child: InkWell(
            onTap: () {
              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => GallaryDetailScreen(),
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
                Container(
                  width: 204,
                  color: kBlack,
                  child: Text(
                    infolist[index].name.toString(),
                    textAlign: TextAlign.center,
                    style: FontTextStyle.normalText12,
                  ),
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
