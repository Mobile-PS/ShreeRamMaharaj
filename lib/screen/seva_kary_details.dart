import 'package:flutter/material.dart';
import 'package:maharaj/utils/ExpnasionTile.dart';
import 'package:maharaj/utils/appbar.dart';
import 'package:maharaj/utils/navigationdrwer.dart';

class SevaKaryDetails extends StatefulWidget {
  String? title;
   SevaKaryDetails({super.key,this.title});

  @override
  State<SevaKaryDetails> createState() => _SevaKaryDetailsState();
}

class _SevaKaryDetailsState extends State<SevaKaryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(title: widget.title,),
      drawer: CustomDrawer(),
      body: ExpansionTileWithBorder(),
    );
  }
}
