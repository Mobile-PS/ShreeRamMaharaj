import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTextFieldOutline extends StatelessWidget {
  CustomTextFieldOutline(
      {required this.label,
        required this.controller,
        this.isValid,
        this.invalidMsg,
        this.image,
        this.inputType,
        this.suffixIcon,
        this.onValidator,

        this.obsecure =false,
      });

  final String label;
  final TextEditingController controller;
  final bool? isValid;
  final String? invalidMsg;
  final Widget? image;
  final Widget? suffixIcon;
  final bool? obsecure;
  final String? Function(String?)? onValidator;


  final TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: onValidator,
        controller:controller ,
        style: TextStyle(
          fontSize: 14,
          color: kBlack,
          //fontWeight: FontWeight.w600,
        ),
        keyboardType:inputType,
        onChanged: (value) {

        },
        obscureText:obsecure!,
        decoration: InputDecoration(

          focusColor: kOrange,
          //add prefix icon
          prefixIcon:image,
          suffixIcon: suffixIcon,


          // errorText: invalidMsg,

          border: OutlineInputBorder(
            borderSide:
            const BorderSide(color: kOrange, width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),

          focusedBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: kOrange, width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          fillColor: Colors.grey,

          hintText: label,

          //make hint text
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontFamily: "verdana_regular",
            fontWeight: FontWeight.w400,
          ),

          //create lable
          labelText: label,
          //lable style
          labelStyle: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontFamily: "verdana_regular",
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}