import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:maharaj/utils/colors.dart';
import 'package:maharaj/utils/dummymodel/dashboard_model.dart';
import 'package:maharaj/utils/styleclass.dart';

import '../utils/appbar.dart';
import '../utils/navigationdrwer.dart';

class DashboardSreen extends StatefulWidget {
  const DashboardSreen({super.key});

  @override
  State<DashboardSreen> createState() => _DashboardSreenState();
}

class _DashboardSreenState extends State<DashboardSreen> {
  int currentPosition = 0;
  List<String> imgList1 = [
    "images/Image.png",
    "images/Image.png",
    "images/Image.png"
  ];
  List<Dashboardimages> Images = Dashboardimages.Img;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(
        title: "मुख्यपृष्ठ",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: Get.height * 0.25,
                  viewportFraction: 0.85,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(seconds: 4),
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    currentPosition = index;
                  },
                ),
                items: imgList1
                    .map((e) => Image.asset(
                          e,
                          fit: BoxFit.cover,
                          // width: Get.width * 0.8,
                          // width: 100,
                          // height: 100,
                        ))
                    .toList(),
              ),
            ),
            GridView.count(
                // controller: Scollcontroller,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                // physics: BouncingScrollPhysics,
                crossAxisCount: 3,
                addRepaintBoundaries: false,
                //padding: const EdgeInsets.all(16.0),
                childAspectRatio: 11.0 / 13.0,
                // mainAxisSpacing: 1,
                children: _buildGridCards1(Images) // Replace
                ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("उत्सव आणि कार्यक्रम",style: FontTextStyle.boldblackText,),
                Text("सर्व पहा",style: TextStyle(decoration: TextDecoration.underline,color: kBlack),)
              ],),
            ),
            SizedBox(
              height: 110,
              child: ListView.builder(
                itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                return Card(
                  child: Container(child:
                  Row(children: [
                    Image.asset("images/Japa.png",width: 100,height: 100,),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0,bottom: 10,right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("श्रीराम महाराज संकल्प जप",style: FontTextStyle.boldblackText,),
                          Text("Monday, 10-10-2022"),
                          Spacer(),
                          Container(
                            width: 150,
                              child: Text("पुढे पहा...",textAlign: TextAlign.end,style: TextStyle(color: kRed),)),
                  
                        ],
                      ),
                    )
                  ],),),
                );
              }),
            ),
            Flex(direction: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Expanded(
                    flex: 3,
                    child: Container(
                      child: ElevatedButton(

                        onPressed: () {}, child: Text('सेवा कार्य',style: TextStyle(color: kWhite),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(kOrange),
                        //  shape: BorderRadius.all(Radius.circular(10))
                        ),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Expanded(
                    flex: 3,
                    child: Container(
                      child: ElevatedButton(

                        onPressed: () {}, child: Text('आजची पूजा',style: TextStyle(color: kWhite),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(kOrange),
                        ),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Expanded(
                    flex: 3,
                    child: Container(
                      child: ElevatedButton(

                        onPressed: () {}, child: Text('दैनंदिन साधना',style: TextStyle(color: kWhite),),
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
      drawer: CustomDrawer(),
    );
  }

  List<Container> _buildGridCards1(List<Dashboardimages> infolist) {
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
}
