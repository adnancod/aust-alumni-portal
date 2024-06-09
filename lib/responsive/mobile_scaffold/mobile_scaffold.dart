import 'dart:async';

import 'package:aust_alumni_portal/constants/body/austians_by_numbers.dart';
import 'package:aust_alumni_portal/constants/body/copyright.dart';
import 'package:aust_alumni_portal/constants/body/intro.dart';
import 'package:aust_alumni_portal/constants/body/mobile_austians_by_numbers.dart';
import 'package:aust_alumni_portal/constants/body/mobile_contact_us.dart';
import 'package:aust_alumni_portal/constants/body/mobile_intro.dart';
import 'package:aust_alumni_portal/constants/body/mobile_latest_events.dart';
import 'package:aust_alumni_portal/constants/body/mobile_stay_connected.dart';
import 'package:aust_alumni_portal/constants/body/mobile_welcome_alumni.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/appbar/appbar.dart';
import '../../constants/body/tablet_about.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  double _opacity = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width * 1;
    final height = MediaQuery.sizeOf(context).height * 1;
    return Scaffold(
      appBar: myAppBar,
      body: SingleChildScrollView(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: Duration(seconds: 2),
          child: Center(
            child: Column(
              children: [
                MobileIntro(),
                SizedBox(height: height*0.05,),
                MobileWelcomeAlumni(),
                SizedBox(height: height*0.05,),
                MobileStayConnected(),
                SizedBox(height: height*0.05,),
                MobileAustiansByNumbers(),
                SizedBox(height: height*0.05,),
                MobileLatestEvents(),
                SizedBox(height: height*0.05,),
                TabletAbout(),
                SizedBox(height: height*0.01,),
                MobileContactUs(),
                Copyright()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
