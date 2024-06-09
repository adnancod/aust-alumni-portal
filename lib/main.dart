import 'package:aust_alumni_portal/responsive/desktop_scaffold/desktop_Scaffold.dart';
import 'package:aust_alumni_portal/responsive/mobile_scaffold/mobile_scaffold.dart';
import 'package:aust_alumni_portal/responsive/responsive_layout.dart';
import 'package:aust_alumni_portal/responsive/tablet_scaffold/tablet_scaffold.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),),
    );
  }
}

