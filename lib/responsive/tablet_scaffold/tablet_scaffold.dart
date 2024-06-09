import 'dart:async';

import 'package:aust_alumni_portal/constants/body/austians_by_numbers.dart';
import 'package:aust_alumni_portal/constants/body/copyright.dart';
import 'package:aust_alumni_portal/constants/body/tablet_about.dart';
import 'package:aust_alumni_portal/constants/body/web_bar.dart';
import 'package:flutter/material.dart';

import '../../constants/appbar/appbar.dart';
import '../../constants/body/about_us.dart';
import '../../constants/body/contact_us.dart';
import '../../constants/body/intro.dart';
import '../../constants/body/latest_events.dart';
import '../../constants/body/stay_connected.dart';
import '../../constants/body/welcome_alumni.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
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
      appBar: myWebAppBar,
      body:  SingleChildScrollView(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: Duration(seconds: 2),
          child: Center(
            child: Column(
              children: [
                HomeIntro(),
                SizedBox(height: height*0.05,),
                WelcomeAlumni(),
                SizedBox(height: height*0.05,),
                StayConnected(),
                SizedBox(height: height*0.05,),
                AustiansByNumbers(),
                LatestEvents(),
                SizedBox(height: height*0.05,),
                TabletAbout(),
                SizedBox(height: height*0.05,),
                ContactUs(),
                Copyright()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
