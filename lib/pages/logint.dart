import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackthon/My_pages/pages.dart';

class LoginTeacher extends StatelessWidget {
  const LoginTeacher({Key? key}) : super(key: key);

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
              title: const Text("Profile"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.notification_add),
              title: const Text("Notification"),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                  "name of Teacher",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.oswald(fontSize: 30),
                ),
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, MyPages.HomeLogin);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent),
                    height: 200,
                    width: 150,
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, MyPages.HomeLogin);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent),
                    height: 200,
                    width: 150,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, MyPages.HomeLogin);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent),
                    height: 200,
                    width: 150,
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, MyPages.HomeLogin);
                  },
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, MyPages.HomeLogin);
                  },
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent),
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, MyPages.HomeLogin);
                  },
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
