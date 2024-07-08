import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maharaj/utils/appbar.dart';
import 'package:maharaj/utils/colors.dart';
import 'package:maharaj/utils/navigationdrwer.dart';

class MyAudioScreen extends StatefulWidget {
  const MyAudioScreen({super.key});

  @override
  State<MyAudioScreen> createState() => _MyAudioScreenState();
}

class _MyAudioScreenState extends State<MyAudioScreen> {
  double changeSpeed=0.5;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppbar(title: "",),
      drawer: CustomDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image Section
            Image.asset(
              'images/Logo.png', // replace with your image URL or asset path
              height: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            // Title Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'डमी मजकूर उपलब्ध आहे!',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.favorite,color: Colors.red,)
                ],
              ),
            ),

            SizedBox(height: 10),
            Slider(
              value:changeSpeed,
              onChanged: (value) {
                changeSpeed= value;
              },
              min: 0.0,
              max: 1.0,
            ),
            // Duration
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('0:00'),
                  Text('12:34'),
                ],
              ),
            ),
            // Audio Controls
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.shuffle),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.replay_10),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.play_arrow),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.forward_10),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.loop),
                  onPressed: () {},
                ),
              ],
            ),
            // Progress Bar
            Container(
              width: Get.width/2,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: kgrey1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.format_list_numbered_rtl_sharp,color: kWhite,),
                    onPressed: () {},
                  ),

                  IconButton(
                    icon: Icon(Icons.add_circle_outline_rounded,color: kWhite,),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.share,color: kWhite,),
                    onPressed: () {},
                  ),
                ],
              ),
            )

          ],
        ),
      ),
      
    );
  }
}
