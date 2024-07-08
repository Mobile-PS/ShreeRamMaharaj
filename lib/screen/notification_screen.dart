import 'package:flutter/material.dart';
import 'package:maharaj/utils/appbar.dart';
import 'package:maharaj/utils/navigationdrwer.dart';

import '../utils/styleclass.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(title: "सूचना"),
      drawer: CustomDrawer(),
      body: ListView.separated(
        itemCount: 4,
          itemBuilder: (context,index){
        return ListTile(
          leading: Image.asset("images/Notification1.png",width: 48,height: 48,),
          title:  Text("भक्तनिवासाची भव्य वास्तू उभारली. सध्या दर्शनार्थी भक्तांच्या निवासाची व्यवस्था याच वास्तूमध्ये केली जाते.",style: FontTextStyle.boldblackText14,),

        );
      }, separatorBuilder: (BuildContext context, int index) {
          return Divider();
      },),
    );
  }
}
