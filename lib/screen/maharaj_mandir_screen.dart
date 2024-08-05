import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maharaj/utils/appbar.dart';
import 'package:maharaj/utils/navigationdrwer.dart';

import '../utils/colors.dart';
import '../utils/dummymodel/dashboard_model.dart';
import '../utils/styleclass.dart';
import 'maharaj_mandir_details.dart';

class MaharajMandirScreen extends StatefulWidget {
  const MaharajMandirScreen({super.key});

  @override
  State<MaharajMandirScreen> createState() => _MaharajMandirScreenState();
}

class _MaharajMandirScreenState extends State<MaharajMandirScreen> {
 List<MandirGrid> Images = MandirGrid.Img;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(title: "महाराजानी स्थापन केलेली मंदिरे",),
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
  List<Container> _buildGridCards1(List<MandirGrid> infolist) {
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
                    () => MaharajMandirDetails(),
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
