import 'package:flutter/material.dart';
import 'package:maharaj/utils/appbar.dart';
import 'package:maharaj/utils/navigationdrwer.dart';

import '../utils/ExpnasionTile.dart';

class SamadhiMandirScreen extends StatefulWidget {
  const SamadhiMandirScreen({super.key});

  @override
  State<SamadhiMandirScreen> createState() => _SamadhiMandirScreenState();
}

class _SamadhiMandirScreenState extends State<SamadhiMandirScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(title: "समाधी मंदिर",),
      drawer: CustomDrawer(),
      body: ExpansionTileWithBorder(),
    );
  }
}
