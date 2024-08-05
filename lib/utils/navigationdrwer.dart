import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maharaj/screen/Auth/login_screen.dart';
import 'package:maharaj/screen/Auth/profile_screen.dart';
import 'package:maharaj/screen/advertise_screen.dart';
import 'package:maharaj/screen/audio_screen.dart';
import 'package:maharaj/screen/contact_screen.dart';
import 'package:maharaj/screen/dashboard_screen.dart';
import 'package:maharaj/screen/donation_screen.dart';
import 'package:maharaj/screen/event_screen.dart';
import 'package:maharaj/screen/galary_screen.dart';
import 'package:maharaj/screen/maharaj_screen.dart';
import 'package:maharaj/screen/notification_screen.dart';
import 'package:maharaj/screen/previous_pooja_screen.dart';
import 'package:maharaj/screen/samadhi_mandir_screen.dart';
import 'package:maharaj/screen/sansta_info_screen.dart';
import 'package:maharaj/screen/seva_karya_screen.dart';
import 'package:maharaj/screen/video_screen.dart';
import 'package:maharaj/screen/vilage_info_screen.dart';
import 'package:maharaj/utils/colors.dart';
import 'package:maharaj/utils/styleclass.dart';

import '../screen/app_updates_screen.dart';
import '../screen/feedback_screen.dart';
import '../screen/maharaj_mandir_screen.dart';
import '../screen/sadhana_screen.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        padding:  EdgeInsets.all(0),
        children: [
          DrawerHeader(

            decoration: BoxDecoration(
              color: kOrange,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap:(){
                    Navigator.pop(context);
                    Get.to(
                      curve: Curves.easeInBack,
                      transition: Transition.leftToRight,
                          () => ProfileScreen(),
                    );
    },
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('images/user.png'), // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16), // Add some space between the image and text
                Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                      Get.to(
                        curve: Curves.easeInBack,
                        transition: Transition.leftToRight,
                            () => LoginScreen(),
                      );
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ), //DrawerHeader
          ListTile(
            leading:  Image.asset("images/Home.png",height: 24,width: 24,),
            title:  Text('मुख्यपृष्ठ',style: FontTextStyle.boldblackText,),
            onTap: () {
              Navigator.pop(context);
              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => DashboardSreen(),
              );
            },
          ),
          ListTile(
            leading:  Image.asset("images/Shreerammaharaj.png",height: 24,width: 24,),
            title:  Text(' प. पु  महाराज',style: FontTextStyle.boldblackText,),
            onTap: () {
              Navigator.pop(context);

              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => MaharajScreen(),
              );
            },
          ),
          ListTile(
            leading:  Image.asset("images/Saunthevishai.png",height: 24,width: 24,),
            title:  Text(' संस्थेविषयी ',style: FontTextStyle.boldblackText,),
            onTap: () {
              Navigator.pop(context);

              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => SansthInfoScreen(),
              );
            },
          ),
          ListTile(
            leading:  Image.asset("images/SamadhiMandir.png",height: 24,width: 24,),
            title:  Text(' समाधी मंदिर',style: FontTextStyle.boldblackText,),
            onTap: () {
              Navigator.pop(context);

              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => SamadhiMandirScreen(),
              );
            },
          ),
          ListTile(
            leading:  Image.asset("images/SevaKary.png",height: 24,width: 24,),
            title:  Text('सेवा कार्य',style: FontTextStyle.boldblackText,),
            onTap: () {
              Navigator.pop(context);

              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => SevaScreen(),
              );            },
          ),
          ListTile(///DaindinSadhana.png
            leading:  Image.asset("images/DaindinSadhana.png",height: 24,width: 24,),
            title:  Text('दैनंदिन साधना',style: FontTextStyle.boldblackText,),
            onTap: () {

              Navigator.pop(context);

              Get.to(
                  curve: Curves.easeInBack,
                  transition: Transition.leftToRight,
              () => SadhanaScreen(),);
            },
          ),
          ListTile(
            leading:  Image.asset("images/temple.png",height: 24,width: 24,),
            title:  Text(' महाराजानी स्थापन केलेली मंदिरे ',style: FontTextStyle.boldblackText,),
            onTap: () {
              Navigator.pop(context);

              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => MaharajMandirScreen(),);
            },
          ),
          ListTile(
            leading:  Image.asset("images/BadwahMahit.png",height: 24,width: 24,),
            title:  Text('बड़वाह माहीति ',style: FontTextStyle.boldblackText,),
            onTap: () {
              Navigator.pop(context);

              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => InfoVilageScreen(),
              );
            },
          ),
          ListTile(
            leading:  Image.asset("images/Audio.png",height: 24,width: 24,),
            title:  Text(' ऑडिओ ',style: FontTextStyle.boldblackText,),
            onTap: () {
              Navigator.pop(context);

              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => AudioScreen(),
              );


            },
          ),
          ListTile(
            leading:  Image.asset("images/Video.png",height: 24,width: 24,),
            title:  Text(' व्हिडिओ',style: FontTextStyle.boldblackText,),
            onTap: () {
              Navigator.pop(context);
              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => VideoScreen(),
              );

            },
          ),
          ListTile(
            leading:  Image.asset("images/publication.png",height: 24,width: 24,),
            title:  Text('प्रकाशन ',style: FontTextStyle.boldblackText,),
            onTap: () {
              Navigator.pop(context);
              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => AdrvertiseScreen(),
              );
            },
          ),
          ListTile(
            leading:  Image.asset("images/Events.png",height: 24,width: 24,),
            title:  Text('उत्सव आणि कार्यक्रम',style: FontTextStyle.boldblackText,),
            onTap: () {
              Navigator.pop(context);
              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => EventScreen(),
              );
            },
          ),  ListTile(
            leading:  Image.asset("images/Gallery.png",height: 24,width: 24,),
            title:  Text('गॅलरी',style: FontTextStyle.boldblackText,),
            onTap: () {
              Navigator.pop(context);
              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => GallaryScreen(),
              );
            },
          ),  ListTile(
            leading:  Image.asset("images/MagilPooja.png",height: 24,width: 24,),
            title:  Text('मागिल पूजा',style: FontTextStyle.boldblackText,),
            onTap: () {
              Navigator.pop(context);
              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => PreviousPoojaScreen(),
              );
            },
          ),  ListTile(
            leading:  Image.asset("images/Mandirview.png",height: 24,width: 24,),
            title:  Text('मंदिर 3600 दृश्य',style: FontTextStyle.boldblackText,),
            onTap: () {
              Navigator.pop(context);
            },
          ),  ListTile(
            leading:  Image.asset("images/Donation.png",height: 24,width: 24,),
            title:  Text('देणगी',style: FontTextStyle.boldblackText,),
            onTap: () {
              Navigator.pop(context);
              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => DonationScreen(),
              );
            },
          ),  ListTile(
            leading:  Image.asset("images/feedback.png",height: 24,width: 24,),
            title:  Text('अभिप्राय',style: FontTextStyle.boldblackText,),
            onTap: () {
              Navigator.pop(context);
              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => FeedbackScreen(),
              );
            },
          ),  ListTile(
            leading:  Image.asset("images/Notification.png",height: 24,width: 24,),
            title:  Text('सूचना',style: FontTextStyle.boldblackText,),
            onTap: () {
              Navigator.pop(context);
              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => NotificationScreen(),
              );
            },
          ),  ListTile(
            leading:  Image.asset("images/contact.png",height: 24,width: 24,),
            title:  Text('संपर्क',style: FontTextStyle.boldblackText,),
            onTap: () {
              Navigator.pop(context);
              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => ContactScreen(),
              );            },
          ),  ListTile(
            leading:  Image.asset("images/Share.png",height: 24,width: 24,),
            title:  Text('शेयर',style: FontTextStyle.boldblackText,),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading:  Image.asset("images/app.png",height: 24,width: 24,),
            title:  Text('ॲप सेटीन्ग्स',style: FontTextStyle.boldblackText,),
            onTap: () {
              Navigator.pop(context);
              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => AppUpdatesScreen(),
              );
            },
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading:  Image.asset("images/Logoout.png",height: 24,width: 24,),
            title:  Text('लॉगआउट',style: FontTextStyle.boldblackText,),
            onTap: () {
              Navigator.pop(context);
              Get.to(
                curve: Curves.easeInBack,
                transition: Transition.leftToRight,
                    () => LoginScreen(),
              );
            },
          ),
        ],
      ),
    );
  }
}
