import 'package:flutter/material.dart';
import 'package:maharaj/utils/ExpnasionTile.dart';
import 'package:maharaj/utils/appbar.dart';
import 'package:maharaj/utils/navigationdrwer.dart';

class SadhanaScreen extends StatefulWidget {
  const SadhanaScreen({super.key});

  @override
  State<SadhanaScreen> createState() => _SadhanaScreenState();
}

class _SadhanaScreenState extends State<SadhanaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(title: "दैनंदिन साधना",),
      drawer: CustomDrawer(),
      body: ExpansionTileWithBorder(),
    );
  }
}
