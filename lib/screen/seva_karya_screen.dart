import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maharaj/utils/appbar.dart';
import 'package:maharaj/utils/navigationdrwer.dart';

import '../utils/ExpnasionTile.dart';
import '../utils/colors.dart';
import '../utils/dummymodel/dashboard_model.dart';
import '../utils/styleclass.dart';
import 'Auth/splash_screen.dart';
import 'seva_kary_details.dart';

class SevaScreen extends StatefulWidget {
  const SevaScreen({super.key});

  @override
  State<SevaScreen> createState() => _SevaScreenState();
}

class _SevaScreenState extends State<SevaScreen> {
  List<SevakaryGrid> Images = SevakaryGrid.Img;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(title: "सेवा कार्य",),
      drawer: CustomDrawer(),
      body:  Column(
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
  List<Container> _buildGridCards(List<SevakaryGrid> infolist) {
    List<Container> cards = List.generate(
      infolist.length,
          (int index) {
        print(infolist.length);
        return Container(
          //padding: EdgeInsets.all(10),
          //height: 20,
          decoration: BoxDecoration(
            border: Border.all(color: kWhite),
          ),
          child: InkWell(
            onTap: () {},
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      infolist[index].images.toString(),
                      height: 90,
                      width: 114,
                      fit: BoxFit.cover,
                      //  color: kbookblue,
                    ),
                  ),
                ),
                Text(
                  infolist[index].name.toString(),
                )
              ],
            ),
          ),
        );
      },
    );
    return cards;
  }
  List<Container> _buildGridCards1(List<SevakaryGrid> infolist) {
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
                    () => SevaKaryDetails(title: infolist[index].name.toString(),),
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
                Text(
                  infolist[index].name.toString(),
                  textAlign: TextAlign.center,
                  style: FontTextStyle.boldblackText14,
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
