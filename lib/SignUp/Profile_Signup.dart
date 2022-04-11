import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackthon/My_pages/pages.dart';

class NewProfile extends StatefulWidget {
  const NewProfile({Key? key}) : super(key: key);

  @override
  State<NewProfile> createState() => _NewProfileState();
}

class _NewProfileState extends State<NewProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Column(children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Full Name",
                labelText: "Full Name",
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: ("Enter Mobile Number"),
                labelText: ("Mobile Number"),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter State",
                labelText: "State",
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Address",
                labelText: "Address",
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Address",
                labelText: "Address",
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Email",
                labelText: "Email",
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                ElevatedButton(
                  child: Text("SignUp as Teacher"),
                  onPressed: () {
                    Navigator.pushNamed(context, MyPages.LoginTeacher);
                  },
                ),
                SizedBox(
                  width: 80,
                ),
                ElevatedButton(
                  child: Text("SignUp as Student"),
                  onPressed: () {
                    Navigator.pushNamed(context, MyPages.HomeLogin);
                  },
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
