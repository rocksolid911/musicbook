import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
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
                  // Image.asset(
                  //   'assets/images/getstperson.png',
                  //   width: width ,
                  //   height: height * 0.8,
                  // ),
                  ShaderMask(
                    shaderCallback: (rect) {
                      return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black,
                          Colors.black,
                          Colors.transparent
                        ],
                      ).createShader(
                          Rect.fromLTRB(0, 0, rect.width, rect.height));
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image.asset(
                      'assets/images/getstperson.png',
                      height: height * 0.8,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                      "gkkkkjhlkjljlklk;lk;lk;k;;889890090090900909-09-9-9-9-9-9--9-"),
                ],
              ),
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
                )),
            Positioned(
              bottom: height * 0.05,
              left: 0,
              child: SizedBox(
                height: height * 0.25,
                width: width,
                // decoration: BoxDecoration(
                //   color: Colors.green,
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Welcome",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        lorem(paragraphs: 1, words: 20),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => LogInScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text("Get Started"),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF471CF1)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              child: Text(
                "MUSIC \n Book",
               textAlign: TextAlign.left,
               style: GoogleFonts.bebasNeue(
                 color: Colors.white,
                 fontSize: 50,
                 fontWeight: FontWeight.bold,
               ),
            ),
              top: height * 0.5,
              left: width * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
