import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maharaj/utils/radio_button_widget.dart';
import 'package:maharaj/utils/styleclass.dart';

import 'colors.dart';

LangaugeModelbottomsheet(BuildContext context,setState){

  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),

        ),
      ),
      builder: (BuildContext context) {
        return  StatefulBuilder(
          builder: (BuildContext context, void Function(void Function()) setState) {
            return  DraggableScrollableSheet(
              expand: false,
              initialChildSize:0.3,
              minChildSize: 0.2,
              builder: (BuildContext context, ScrollController scrollController) {
                return
                  Column(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Align(
                              alignment: Alignment.topCenter,
                              child: Text("भाषा बदला",style: FontTextStyle.boldblackText14,textAlign: TextAlign.center,)),
                         Divider(),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Center(child: Text('कृपया आपली पसंतीची भाषा निवडा',style: TextStyle(fontSize: 12, ))),
                              ],
                            ),
                          ),
                          SizedBox(height: 16),

                          buildRadioOption("मराठी","1",setState,"अ"),
                          buildRadioOption("English","2",setState,"A"),
                          buildRadioOption("हिंदी","3",setState,"अ"),
                        ],
                      ),

                    ],
                  ); },

            );
          },

        );
      });
}