import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'dart:math' as math;

import 'package:google_fonts/google_fonts.dart';
import 'package:musicbook/Auth/screen/signup.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).padding.top +
            MediaQuery.of(context).padding.bottom);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Colors.black,
                    Color(0xFF041e42),
                    Colors.black,
                  ],
                  transform: GradientRotation(math.pi / 8),
                ),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/getstperson.png',
                    width: width,
                    height: height * 0.8,
                  ),
                ],
              )
            ),
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.2),
                        Colors.black,
                      ],
                      stops: const [0.1, 0.6, 0.7],
                    ),
                  ),
                ),
            ),
            Positioned(
              bottom: height*0.35,
              left: width*0.25,
              child: Text(
                'Get STarted',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                height: height*0.33,
                width: width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Colors.black,
                      Color(0xFF041e42),
                      Colors.black,
                    ],
                    stops:  [0.1, 1, 0.2],
                    transform: GradientRotation(math.pi / 10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        width: width*0.8,
                        child: Text(
                          lorem(paragraphs: 1, words: 15),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height*0.02,
                      ),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));

                      },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14.0),
                            child: Text("Login with Email"),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF471CF1),
                            onPrimary: Colors.white,
                            // shape: RoundedRectangleBorder(
                            //   borderRadius: BorderRadius.circular(20),
                            // ),
                          ),
                      ),
                      ElevatedButton(onPressed: (){},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text("Login with Google"),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF282828),
                          onPrimary: Colors.white,
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.circular(20),
                          // ),
                        ),
                      ),
                      ElevatedButton(onPressed: (){},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text("Login with Mobile"),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF282828),
                          onPrimary: Colors.white,
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.circular(20),
                          // ),
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
    );
  }
}
