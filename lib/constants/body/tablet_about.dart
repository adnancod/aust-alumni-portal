import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabletAbout extends StatelessWidget {
  const TabletAbout({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        // Image background
        Container(
          width: width,
          height: height * 1.5,
          child: Image.asset(
            'assets/about.jpg', // Ensure your image path is correct
            fit: BoxFit.cover,
          ),
        ),
        // Dark overlay
        Container(
          width: width,
          height: height * 1.5,
          color: Colors.black.withOpacity(0.8), // Adjust opacity as needed
        ),
        // Content
        Center(
          child: Container(
            width: width * 0.8,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'About Us',
                  style: GoogleFonts.robotoMono(
                    textStyle: TextStyle(
                      color: Colors.white, // Text color changed to white
                      letterSpacing: .5,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'We’re Here For You',
                  style: GoogleFonts.caveat(
                    textStyle: TextStyle(
                      color: Colors.white, // Text color changed to white
                      letterSpacing: .5,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  '"Linking you with a global network of over 1000+ alumni and delivering the latest AUST updates, our portal ensures you stay connected to your alma mater, no matter where you are."',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.white, // Text color changed to white
                      letterSpacing: .5,
                      fontSize: 20,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: height*0.2),
                Text(
                  "Welcome to the AUST Alumni Portal, where enduring connections thrive. More than just a platform, our portal is a vibrant community dedicated to strengthening the bond between you and AUST. By joining, you gain access to reconnect with fellow alumni, exchange invaluable experiences and knowledge, and collaborate on exciting projects. Create, connect, contribute, and stay updated on the latest events. Together, let's shape a future filled with camaraderie, support, and endless possibilities. Join us today and be part of a lifelong connection that empowers you to excel.",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.white, // Text color changed to white
                      letterSpacing: .5,
                      fontSize: 14,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
