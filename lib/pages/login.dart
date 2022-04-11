import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackthon/My_pages/pages.dart';

class LoginHome extends StatefulWidget {
  const LoginHome({Key? key}) : super(key: key);

  @override
  State<LoginHome> createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text("Name of user"),
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: Text("Profile"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.notification_add),
              title: Text("Notification"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("LogOut"),
              onTap: () {
                Navigator.pushNamed(context, MyPages.homepage);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
          title: Text(
        "Welcome",
        textAlign: TextAlign.center,
      ) //reference
          ),
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage("assets/images/study_image.jpg"),
              radius: 80,
              child: Text(
                "Sample Image",
                style: GoogleFonts.oswald(fontSize: 30, color: Colors.brown),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
              child: Container(
                height: 50,
                width: double.maxFinite,
                color: Colors.blueGrey,
                child: Text(
                  "name of student",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.oswald(fontSize: 30),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
