import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicbook/Home/screen/notification.dart';

class SettingMenu extends StatefulWidget {
  const SettingMenu({Key? key}) : super(key: key);

  @override
  State<SettingMenu> createState() => _SettingMenuState();
}

class _SettingMenuState extends State<SettingMenu> {
  List<String> items = [
    'Notifications',
    'My Learning',
    'My Albums',
    'Digital Studio',
    'Digital Visiting Card',
    'My Profile',
    'Karaoke',
    'Settings',
    'Support and help',
    'Rating',
    'About Us',
  ];
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
            Container(
              height: height * 0.25,
              width: width,
              decoration: const BoxDecoration(
                color: Color(0xFF471CF1),
                //borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 25,
                        //backgroundImage: const AssetImage("assets/images/1.jpg"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: const Text(
                      'Adam west',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: const Text(
                      'User Id: 12467',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height*0.01,),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NotificationScreen()));
                        },
                        child: Align(
                          alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0,top: 10,bottom: 10),
                              child: Text(
                          ' ${items[index]}',
                          style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 18),
                        ),
                            )),
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 0.5,
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
