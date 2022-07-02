import 'package:flutter/material.dart';
import 'package:flutter_app_1/screens/screen1.dart';

class screen0 extends StatelessWidget {
  String? title;
  screen0({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  child: Container(
                    child: Text("Login Page",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Container(
                  child: TextField(
                      maxLength: 10,
                      decoration: InputDecoration(
                          labelText: "Name",
                          hintText: "Enter your Name",
                          labelStyle:
                              TextStyle(fontSize: 24, color: Colors.black),
                          border: UnderlineInputBorder()))),
            ),
            SizedBox(
              child: Container(
                  child: TextField(
                      maxLength: 10,
                      decoration: InputDecoration(
                          labelText: "Email Id",
                          hintText: "Enter your EmailID",
                          labelStyle:
                              TextStyle(fontSize: 24, color: Colors.black),
                          border: UnderlineInputBorder()))),
            ),
            Container(
              child: ElevatedButton(
                child: Text(
                  "Login",
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (conetext) {
                    return screen1(title: 'Status Bar ');
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
