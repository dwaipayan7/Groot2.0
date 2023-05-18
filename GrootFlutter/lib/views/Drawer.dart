import 'dart:ffi';
import 'package:color_xd/const/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://i.pinimg.com/736x/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg";

    return Drawer(
      child: Container(
        color: Color(0xff424240),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.white),
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Team Droids"),
                accountEmail: Text("teamDroidsbusiness@gmail.com"),
                currentAccountPicture:
                    CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
              ),
            ),

            // SizedBox(
            //   height: 70,
            // ),
            // CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
            // "Fuck off bitch".text.make(),

            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text("Home",
                  textScaleFactor: 1,
                  style: GoogleFonts.goldman(
                      textStyle: TextStyle(color: Colors.white))),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text("Profile",
                  textScaleFactor: 1,
                  style: GoogleFonts.goldman(
                      textStyle: TextStyle(color: Colors.white))),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text("Mail",
                  textScaleFactor: 1,
                  style: GoogleFonts.goldman(
                      textStyle: TextStyle(color: Colors.white))),
            ),

            ListTile(
              leading: Icon(
                Icons.contact_emergency,
                color: Colors.white,
              ),
              title: Text("Contact us",
                  textScaleFactor: 1,
                  style: GoogleFonts.goldman(
                      textStyle: TextStyle(color: Colors.white))

                  // (TextStyle(color: Colors.white)),

                  ),
            ),
            SizedBox(
              height: 180,
            ),
            ListTile(
              leading: Icon(
                Icons.question_mark_rounded,
                color: Colors.white,
              ),
              title: Text("About us",
                  textScaleFactor: 1,
                  style: GoogleFonts.goldman(
                      textStyle: TextStyle(color: Colors.white))),
            ),

            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text("Log out",
                  textScaleFactor: 1,
                  style: GoogleFonts.goldman(
                      textStyle: TextStyle(color: Colors.white))),
            )
          ],
        ),
      ),
    );
  }
}
