import 'package:flutter/material.dart';
import 'package:maharaj/utils/colors.dart';
import 'package:maharaj/utils/styleclass.dart';

class customAppbar extends StatefulWidget implements PreferredSizeWidget {
  String? title;
  customAppbar({this.title});

  @override
  State<customAppbar> createState() => _customAppbarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _customAppbarState extends State<customAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kOrange,
    //  leading: Icon(Icons.account_circle),
      iconTheme: const IconThemeData(
        size: 30, //change size on your need
        color: kWhite, //change color on your need
      ),
      title: Row(
        children: [
          Icon(Icons.account_circle,size: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.title!,style: FontTextStyle.normalText,),
          ),
        ],
      ),
      actions: [
        Icon(Icons.notifications,color: kWhite,size: 25,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.translate,color: kWhite,size: 25,),
        ),

      ],
    );
  }


}
