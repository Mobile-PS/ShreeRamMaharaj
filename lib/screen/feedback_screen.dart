import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maharaj/utils/appbar.dart';
import 'package:maharaj/utils/custom_textfield_widget.dart';
import 'package:maharaj/utils/navigationdrwer.dart';

import '../utils/colors.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _name = TextEditingController();
    TextEditingController _date = TextEditingController();
    TextEditingController _phone = TextEditingController();
    TextEditingController _email = TextEditingController();
    TextEditingController _comment = TextEditingController();
    return Scaffold(
      appBar: customAppbar(title: "अभिप्राय",),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextFieldOutline(label: "तुमचे नाव", controller:_name ),
            CustomTextFieldOutline(label: "०६/०१/२०२१", controller:_date ),
            CustomTextFieldOutline(label: "फोन नंबर", controller:_phone ),
            CustomTextFieldOutline(label: "ईमेल", controller:_email ),
            CustomTextFieldOutline(label: "तुमचा संदेश", controller:_comment ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: Get.width,
                child: ElevatedButton(


                  onPressed: () {}, child: Text('पाठवा',style: TextStyle(color: kWhite),),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(kOrange),
                    //  shape: BorderRadius.all(Radius.circular(10))
                  ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
