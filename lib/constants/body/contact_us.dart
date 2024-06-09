import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('aust_logo.webp',width: width*0.1,),
          Container(
            child: Column(
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
                  children: [
                    Icon(Icons.location_on_outlined, color: Colors.blue),
                    SizedBox(width: width*0.005),
                    Column(
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
          ),
          Column(
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
