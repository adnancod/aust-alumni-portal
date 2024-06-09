import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visibility_detector/visibility_detector.dart';

class MobileAustiansByNumbers extends StatefulWidget {
  const MobileAustiansByNumbers({super.key});

  @override
  _MobileAustiansByNumbersState createState() => _MobileAustiansByNumbersState();
}

class _MobileAustiansByNumbersState extends State<MobileAustiansByNumbers> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _animation;
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _animation = IntTween(begin: 1, end: 1000).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleVisibilityChanged(VisibilityInfo info) {
    if (info.visibleFraction > 0 && !_isVisible) {
      _controller.forward();
      _isVisible = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      child: Stack(
        children: [
          Container(
            child: Image.asset(
              'assets/austians.jpg', // Ensure the image path is correct
              fit: BoxFit.cover,
              height: height * 0.5,
            ),
          ),
          Container(
            height: height * 0.5,
            width: width,
            decoration: BoxDecoration(
              color: Colors.black54,
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(8),
              width: width * 0.7,
              child: Column(
                children: [
                  Text(
                    'Austians By Numbers!',
                    style: GoogleFonts.robotoMono(
                      textStyle: TextStyle(
                        color: Colors.white,
                        letterSpacing: .5,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.04),
                  Text(
                    'Pioneers, innovators, catalysts of change; leaving their imprint across diverse domains. A community renowned for its excellence; together, we proudly carry the AUST legacy wherever we roam.',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: VisibilityDetector(
                      key: Key('animated-text-key-mobile'),
                      onVisibilityChanged: _handleVisibilityChanged,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: width * 0.35,
                        height: height * 0.15,
                        color: Colors.black12,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                'Total Alumni',
                                style: GoogleFonts.robotoMono(
                                  textStyle: TextStyle(
                                    color: Colors.blue,
                                    letterSpacing: .5,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.01),
                            Center(
                              child: Text(
                                '${_animation.value}+',
                                style: GoogleFonts.ubuntu(
                                  textStyle: TextStyle(
                                    color: Colors.blueAccent,
                                    letterSpacing: .5,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class MobileAustiansByNumbers extends StatelessWidget {
//   const MobileAustiansByNumbers({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.sizeOf(context).width * 1;
//     final height = MediaQuery.sizeOf(context).height * 1;
//     return Container(
//      
//       child: Stack(
//         children: [
//           Container(
//             child: Image.asset('austians.jpg',
//               fit: BoxFit.cover,
//               height: height*0.5,
//             ),
//           ),
//           Container(
//             height: height*0.5,
//             width: width,
//             decoration: BoxDecoration(
//                 color: Colors.black54
//             ),
//           ),
//           Center(
//             child: Container(
//               padding: EdgeInsets.all(8),
//               width: width * 0.7,
//               child: Column(
//                 children: [
//                   Text(
//                     'Austians By Numbers!',
//                     style: GoogleFonts.robotoMono(
//                       textStyle: TextStyle(
//                           color: Colors.white, letterSpacing: .5,
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: height*0.04),
//                   Text('Pioneers, innovators, catalysts of change; leaving their imprint across diverse domains. A community renowned for its excellence; together, we proudly carry the AUST legacy wherever we roam.',
//                     style: GoogleFonts.poppins(
//                       textStyle: TextStyle(
//                         color: Colors.white,
//                         fontSize: 14,
//                       ),
//                     ),),
//                   SizedBox(height: 16),
//                   Center(
//                     child: Container(
//                       padding: EdgeInsets.all(8),
//                       width: width * 0.35,
//                       height: height * 0.15,
//                       color: Colors.black12,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Center(
//                             child: Text('Total Alumni',
//                               style: GoogleFonts.robotoMono(
//                                 textStyle: TextStyle(
//                                     color: Colors.blue, letterSpacing: .5,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold
//                                 ),
//                               ),),
//                           ),
//                           SizedBox(height: height*0.01),
//                           Center(
//                             child: Text('1000+',
//                               style: GoogleFonts.ubuntu(
//                                 textStyle: TextStyle(
//                                     color: Colors.blueAccent, letterSpacing: .5,
//                                     fontSize: 25,
//                                     fontWeight: FontWeight.bold
//                                 ),
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
