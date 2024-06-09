import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Copyright extends StatelessWidget {
  const Copyright({super.key});

  @override
  Widget build(BuildContext context) {
    final year=DateTime.now().year;
    final height = MediaQuery.sizeOf(context).height * 1;
    return Container(
      width: double.infinity,
      height: height*0.1,
      color: Colors.black,
      child: Center(
        child: Text('© AUST Alumni Portal - $year. All rights reserved.',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),),
      ),
    );
  }
}
