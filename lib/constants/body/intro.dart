import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeIntro extends StatelessWidget {
  const HomeIntro({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width * 1;
    final height = MediaQuery.sizeOf(context).height * 1;
    return Container(
      child: Stack(
        children: [
          Container(
            width: width,
            height: height * 0.9,
            child: Image.asset('aust.jpg',
            fit: BoxFit.cover,
            ),
          ),
          Container(
            width: width,
            height: height * 0.9,
            color: Colors.black.withOpacity(0.6), // Adjust opacity as needed
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
            child: Center(
              child: Container(
                width: width * 0.8,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Welcome to AUST Alumni!',
                        style: GoogleFonts.permanentMarker(
                          textStyle: TextStyle(
                              color: Colors.white, letterSpacing: .5,
                          fontSize: 34,
                            fontWeight: FontWeight.bold
                          ),
                        ),

                      ),
                    ),
                    SizedBox(height: height*0.04),
                    Container(
                      width: width*0.5,
                      child: Text(
                        '"As visionaries, innovators, and trailblazers, you have shaped the future across diverse realms. Embodying excellence and unity, you are part of a proud family that carries the AUST legacy. Together, we continue to make our mark wherever we go. Welcome back to where it all began".',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.white, letterSpacing: .5,
                              fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
