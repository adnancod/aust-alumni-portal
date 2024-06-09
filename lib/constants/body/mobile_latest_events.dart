import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileLatestEvents extends StatelessWidget {
  const MobileLatestEvents({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: width * 0.6, // Adjusted to fit better on smaller screens
          height: height * 0.4,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            clipBehavior: Clip.antiAlias, // This ensures the content is clipped to the shape
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/latest_news.jpg', // Ensure your image path is correct
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black87
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(12),
                    color: Colors.black54,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            'Latest News',
                            style: GoogleFonts.robotoMono(
                              textStyle: TextStyle(
                                  color: Colors.white, letterSpacing: .5,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height*0.05,),
                        Center(
                          child: Text(
                            'Registration for Alumni Portal is compulsory for Batch 2024',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: height * 0.06),
        Container(
          width: width * 0.6, // Adjusted to fit better on smaller screens
          height: height * 0.4,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            clipBehavior: Clip.antiAlias, // This ensures the content is clipped to the shape
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/latest_events.jpeg', // Ensure your image path is correct
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black87
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  color: Colors.black54,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'Events',
                          style: GoogleFonts.robotoMono(
                            textStyle: TextStyle(
                                color: Colors.white, letterSpacing: .5,
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height*0.05,),
                      Center(
                        child: Text(
                          'Farewell Party (Coming Soon)',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
