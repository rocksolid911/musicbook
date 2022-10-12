import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).padding.top +
            MediaQuery.of(context).padding.bottom);
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Notification",style: GoogleFonts.poppins(
                        color: Colors.white, fontSize: 18),),
                    IconButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, icon: Icon(Icons.arrow_forward_ios,color: Colors.white,))
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage(
                                        "https://images.unsplash.com/photo-1616166330073-8b2b2b2b2b2b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.6,
                                  child: Text(lorem(paragraphs: 1, words: 10),style: GoogleFonts.poppins(
                                      color: Colors.white, fontSize: 14),),
                                ),
                                Text("time",style: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 14),)
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                            )
                          ],
                        ),
                      );
                    },
                ),
              ),
            ],
          ),
        ),
    );
  }
}
