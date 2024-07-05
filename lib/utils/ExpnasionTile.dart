import 'package:flutter/material.dart';

import 'colors.dart';

class ExpansionTileWithBorder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: kgrey, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: ExpansionTile(
            title: Text("डमी मजकूर उपलब्ध आहे!"),
            children: <Widget>[
              Image.asset("images/Image.png"),
              Text("लॉरेम इप्सम डोलर अमेट बसतो,")
            ],
          ),
        ),
        SizedBox(height: 8.0),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: kgrey, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: ExpansionTile(
            title: Text("डमी मजकूर उपलब्ध आहे!"),
            children: <Widget>[
              Image.asset("images/Image.png"),
              Text("लॉरेम इप्सम डोलर अमेट बसतो,")
            ],
          ),
        ),
        SizedBox(height: 8.0),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: kgrey, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: ExpansionTile(
            title: Text("डमी मजकूर उपलब्ध आहे!"),
            children: <Widget>[
              Image.asset("images/Image.png"),
              Text("लॉरेम इप्सम डोलर अमेट बसतो,")
            ],

          ),
        ),
      ],
    );
  }
}