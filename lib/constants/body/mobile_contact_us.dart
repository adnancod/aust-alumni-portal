import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileContactUs extends StatefulWidget {
  const MobileContactUs({super.key});

  @override
  State<MobileContactUs> createState() => _MobileContactUsState();
}

class _MobileContactUsState extends State<MobileContactUs> {
  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width * 1;
    final height = MediaQuery.sizeOf(context).height * 1;
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/aust_logo.webp',width: width*0.3,),
          SizedBox(height: height*0.1,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Contact Us',
                style: GoogleFonts.robotoMono(
                  textStyle: TextStyle(
                      color: Colors.white, letterSpacing: .5,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),),
              SizedBox(height: height*0.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.email, color: Colors.blue),
                  SizedBox(width: width*0.005),
                  Text('chairman-cs@aust.edu.pk',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),)
                ],
              ),
              SizedBox(height: height*0.015,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.phone, color: Colors.blue),
                  SizedBox(width: width*0.005),
                  Text('0992 810496',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),)
                ],
              ),
              SizedBox(height: height*0.015,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_outlined, color: Colors.blue),
                  SizedBox(width: width*0.005),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('NPF and New Block 1 – AUST – ',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),),
                      Text('Captain Akaash Rabbani Shaheed Road, ',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),),
                      Text('Havelian, KPK, Pakistan',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),)
                    ],
                  )

                ],
              ),
            ],
          ),
          SizedBox(height: height*0.1,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Follow Us',
                style: GoogleFonts.robotoMono(
                  textStyle: TextStyle(
                      color: Colors.white, letterSpacing: .5,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.facebook, color: Colors.blue),
                    hoverColor: Colors.lightBlueAccent,
                    onPressed: () => _launchURL('https://www.facebook.com'),
                  ),
                  IconButton(
                    icon: Icon(Icons.share, color: Colors.blue),
                    hoverColor: Colors.lightBlueAccent,
                    onPressed: () => _launchURL('https://www.x.com'),
                  ),

                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
