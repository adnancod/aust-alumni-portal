import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var myAppBar=AppBar(
  elevation: 0,
  backgroundColor: Colors.white70,
  leading: Padding(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Image.asset('assets/aust_logo.webp'),
  ),
  title: Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Alumni Portal',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.black, letterSpacing: .5,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),),
            Text('AUST',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.black, letterSpacing: .5,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),
              ),),
          ],
        ),
        ElevatedButton(onPressed: (){},
            child: Text('Login/Register'))
      ],
    ),
  )

);