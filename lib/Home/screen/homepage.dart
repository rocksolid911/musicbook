import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

import 'package:musicbook/Home/screen/settingspage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xFF4D1596),
                    Color(0xFF153996),
                    // Colors.black,
                  ],
                  // stops: [0.5, 0.5],
                  // transform: GradientRotation(math.pi / 8),
                ),
              ),
              child: SizedBox(
                height: height,
                width: width,
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black, Colors.black, Colors.transparent],
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
                      const Color(0xFF153996).withOpacity(0.2),
                      const Color(0xFF153996),
                    ],
                    stops: const [0.1, 0.6, 0.7],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: height * 0.19,
              left: 0,
              child: Container(
                height: height * 0.12,
                width: width,
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: const Icon(Icons.person),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Johny Watt',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '@johnymorey',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: width * 0.2,
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          Text(
                            "  1.2k",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          IconButton(

                            color: Colors.white, onPressed: () {
                            commentBottomSheet(context, height, width);
                          }, icon:  Icon(Icons.comment),
                          ),
                          Text(
                            "  1.2k",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          SizedBox(
                            width: width * 0.7,
                            child: Text(
                              lorem(paragraphs: 1, words: 10),
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.1,
                          ),
                          Text(
                            "Follow",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: height * 0.05,
              left: width * 0.1,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: height * 0.1,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.home_outlined,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search_outlined,
                            color: Colors.white,
                          )),
                      GestureDetector(
                        child: CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.white,
                          child: GestureDetector(
                            onTap: (){
                              //addPostBottomSheet(context, height, width);
                            },
                            child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.black,
                                child: Center(
                                    child: IconButton(
                                        onPressed: () {
                                          addPostBottomSheet(context, height, width);
                                        },
                                        icon: Icon(
                                          Icons.add_outlined,
                                          color: Colors.white,
                                          size: 14,
                                        )))),
                          ),
                        ),
                        onTap: () {
                         // addPostBottomSheet(context, height, width);
                        },
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.music_note_outlined,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {

                          },
                          icon: Icon(
                            Icons.pages_outlined,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: height * 0.03,
              left: 0,
              child: Container(
                height: height * 0.1,
                width: width,
                decoration: BoxDecoration(
                  //color: Colors.black.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        height: height * 0.05,
                        width: width * 0.35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            children: [
                              Text(
                                "Following",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.arrow_drop_down, color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SettingMenu()));
                        },
                        icon: Icon(
                          Icons.settings,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
            ),
            Positioned(
              child: Text(
                "MUSIC\nBATTLEs",
                textAlign: TextAlign.left,
                style: GoogleFonts.bebasNeue(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              top: height * 0.52,
              left: width * 0.06,
            ),
          ],
        ),
      ),
    );
  }

  //method to show bottom sheet
  void commentBottomSheet(BuildContext context, double height, double width) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Container(
            height: height * 0.5,
            width: width,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: const Icon(Icons.person),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Johny Watt',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '@johnymorey',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.2,
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      Text(
                        "  1.2k",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      IconButton(

                        color: Colors.white, onPressed: () {
                       // commentBottomSheet(context, height, width);
                      }, icon:  Icon(Icons.comment),
                      ),
                      Text(
                        "  1.2k",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 12,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white,
                                child: const Icon(Icons.person),
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                             SizedBox(
                               width: width * 0.6,
                               child: Text(
                                 lorem( paragraphs: 1, words: 10),
                                 style: GoogleFonts.poppins(
                                   color: Colors.white,
                                   fontSize: 12,
                                   fontWeight: FontWeight.w500,
                                 ),
                               ),
                             ),
                            ],
                          ),
                        );
                      },
                  ),
                ),
                Container(
                  color: Color(0xFF333333),
                  height: height * 0.07,
                  child: Row(
                    children: <Widget>[
                      Expanded (
                        flex:3,
                        child : Container(
                          height: height * 0.07,
                          width: width * 0.07,
                          decoration: BoxDecoration(
                            color: Color(0xFF333333),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text(
                                "Add Comment",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),),
                      Expanded(
                        flex :1,
                        child:Container(
                          height: height * 0.07,
                          width: width * 0.07,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            //borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.send,color: Colors.white,),
                        ),)
                    ],
                  ),
                )
              ],
            ),
          );
        },
    );
  }
  void addPostBottomSheet(BuildContext context, double height, double width) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Container(
          height: height * 0.5,
          width: width,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Create Post",style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Description",style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height * 0.15,
                  width: width ,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Write Something",
                      hintStyle: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Container(
                      height: height * 0.06,
                      width: width * 0.25,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text("upload",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),),
                      ),
                    ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Container(
                        height: height * 0.06,
                        width: width * 0.25,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child:Center(
                          child: Text("Camera",style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Container(
                        height: height * 0.06,
                        width: width * 0.25,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text("Live",style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),),
                        ),
                      ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF471CF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "Upload Content",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

}
