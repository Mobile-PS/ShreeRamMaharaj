import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maharaj/utils/styleclass.dart';

import 'colors.dart';

Widget RowDetails(String title,String subtitle){
  return  Container(
    width: Get.width,
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:<Widget> [
        Expanded(
          flex: 4,
          child: Text(title,
              style: TextStyle(
                  color: kgrey,
                  fontWeight: FontWeight.bold,
                  fontSize: 16)),
        ),


        Expanded(
          flex: 4,
          child: Text(subtitle,
              style: TextStyle(
                  color: kOrange,

                  fontSize: 16)),
        ),
      ],
    ),
  );
}