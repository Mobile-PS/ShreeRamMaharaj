import 'package:flutter/material.dart';
import 'package:maharaj/utils/styleclass.dart';

import 'colors.dart';

String selectedOption = "";
 buildRadioOption(String label,value,setState,String title) {
  return Row(
    children: [
      Radio(
          activeColor: kOrange,
          value: value, groupValue: selectedOption, onChanged: (value) {
        setState(() {
          selectedOption = value!;
          print("Button value: $value");
        });
      }),
      Container(
        decoration: BoxDecoration(
           // shape: BoxShape.rectangle,
            color: selectedOption == value?kOrange:kgrey),
        child: Padding(
          padding:
          const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(
                color: kWhite,
                fontWeight:
                FontWeight.bold),
          ),
        ),
      ),
      SizedBox(width: 5,),
      Text(label,style: FontTextStyle.normalblackText12,),
    ],
  );
}
 buildRadioRowOption(String label,value,setState) {
  return Row(
    children: [
      Radio(
          activeColor: kOrange,
          value: value, groupValue: selectedOption, onChanged: (value) {
        setState(() {
          selectedOption = value!;
          print("Button value: $value");
        });
      }),

      SizedBox(width: 5,),
      Text(label,style: FontTextStyle.normalblackText12,),
    ],
  );
}