import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:maharaj/utils/appbar.dart';

import '../../utils/colors.dart';
import '../../utils/custom_textfield_widget.dart';
import '../../utils/radio_button_widget.dart';
import '../../utils/styleclass.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  File? _selectedImage;

  Future<void> _pickImage(ImageSource source) async {
    final pickedImage = await ImagePicker().pickImage(source: source);

    if (pickedImage != null) {
      setState(() {
        _selectedImage = File(pickedImage.path);
        print(_selectedImage);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(title: "माझे प्रोफइल",),
      body:Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.only(left: Get.width * .05, right: Get.width * .05),        child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: Get.height * 0.06),
                  GestureDetector(
                    onTap: () {
                      _pickImage(ImageSource
                          .gallery); // You can change this to ImageSource.camera if you want to take a picture
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: _selectedImage !=
                              null
                              ? FileImage(_selectedImage!)
                          as ImageProvider<
                              Object>?
                              : _selectedImage!=null?null:AssetImage("images/profile.png")
                          as ImageProvider<
                              Object>?, // Explicit casting
                        ),
                        if (_selectedImage == null)
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Icon(
                                Icons.edit,
                                size: 20,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 8),
                        child: Text("संपूर्ण नाव",textAlign: TextAlign.start,style: FontTextStyle.boldblackText14),
                      )),
                  CustomTextFieldOutline(label: "Vishwajit Kumar", controller: _name ),
                  Align(
                    alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 8),
                        child: Text("ई - मेल",textAlign: TextAlign.start,style: FontTextStyle.boldblackText14),
                      )),
                  CustomTextFieldOutline(label: "vishwajitkumar@gmail.com", controller: _name ),
                 Flex(direction: Axis.horizontal,
                 children: [
                   Expanded(
                     flex: 3,
                       child: Container(
                     child:   Column(
                       children: [
                         Align(
                             alignment: Alignment.topLeft,
                             child: Padding(
                               padding: const EdgeInsets.only(left: 8.0,top: 8),
                               child: Text("मोबाईल नंबर",textAlign: TextAlign.start,style: FontTextStyle.boldblackText14),
                             )),
                         CustomTextFieldOutline(label: "+91 9673306466", controller: _name ),
                       ],
                     ),
                   )),
                   Expanded(
                     flex: 3,
                       child: Container(
                     child:   Column(
                       children: [
                         Align(
                             alignment: Alignment.topLeft,
                             child: Padding(
                               padding: const EdgeInsets.only(left: 8.0,top: 8),
                               child: Text("जन्म तारीख",textAlign: TextAlign.start,style: FontTextStyle.boldblackText14),
                             )),
                         CustomTextFieldOutline(label: "25-12-1900", controller: _name ),
                       ],
                     ),
                   ))
                 ],),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 8),
                        child: Text("संपूर्ण पत्ता",textAlign: TextAlign.start,style: FontTextStyle.boldblackText14),
                      )),
                  TextFormField(
                    maxLines: 3,
                      decoration: InputDecoration(
                        hintText: 'Galleria Apartment, Near Vidya Sahakari Bank, Karve Rd, next to Hotel Sheetal, Mayur Colony, Kothrud, Pune, Maharashtra 411038.',
                        focusColor: kOrange,
                       // filled: true,
                        border: OutlineInputBorder(
                          borderSide:
                          const BorderSide(color: kOrange, width: 1.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      )
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 8),
                        child: Text("भाषा समर्थन",textAlign: TextAlign.start,style: FontTextStyle.boldblackText14),
                      )),
                  Row(
                    children: [
                      buildRadioRowOption("English","1",setState),
                      buildRadioRowOption("मराठी","2",setState),
                      buildRadioRowOption("हिंदी","3",setState),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: Get.width,
                      child: ElevatedButton(onPressed: (){

                      }, child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("सुरक्षित करा",style: FontTextStyle.normalText,),
                      ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: kOrange,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(3))))),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
