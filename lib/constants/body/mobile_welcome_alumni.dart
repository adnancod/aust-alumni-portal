import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileWelcomeAlumni extends StatelessWidget {
  const MobileWelcomeAlumni({super.key});

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
                'Welcome Alumni!',
                style: GoogleFonts.robotoMono(
                  textStyle: TextStyle(
                      color: Colors.black, letterSpacing: .5,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: height*0.02),
              Container(
                child: Image.asset('assets/welcome_alumni.jpg',
                  width: width*0.8,
                ),
              ),
              SizedBox(height: height*0.05),
              Text(
                'As an AUST graduate, you are part of a dynamic network spanning the globe. This ever-expanding community embodies the AUST spirit and is a lifelong champion of the AUST experience. Each day, we strive to strengthen your bond with your alma mater, engaging you with the university’s numerous initiatives and offering opportunities to enrich both your professional and personal lives.',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}
