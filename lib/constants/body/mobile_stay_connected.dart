import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileStayConnected extends StatelessWidget {
  const MobileStayConnected({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width * 1;
    final height = MediaQuery.sizeOf(context).height * 1;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: width * 0.8,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                'Stay Connected',
                style: GoogleFonts.robotoMono(
                  textStyle: TextStyle(
                      color: Colors.black, letterSpacing: .5,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: height*0.02),
              Image.asset('assets/stay_connected.jpg',
                width: width*0.8,),
              SizedBox(height: height*0.02),
              Text(
                'We are dedicated to fostering your engagement with AUST and ensuring your active participation in alumni activities. Help us stay connected by updating your information in our alumni database, so we can keep you informed and involved with all that’s happening at AUST.',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
