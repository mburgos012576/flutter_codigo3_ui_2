import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildBackground(), //Fondo
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    CircleAvatar(
                      radius: 36.0,
                      backgroundColor: Color(0xff00B761).withOpacity(0.18),
                      child: Icon(
                        Icons.home_outlined,
                        color: Color(0xff00B761),
                        size: 36,
                      ),
                    ),
                    SizedBox(
                      height: 38.0,
                    ),
                    Text(
                      "Let's log you in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontFamily: 'SourceSansPro Bold',
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Welcome back You've been missed!",
                      style: TextStyle(
                        color: Colors.white38,
                        fontSize: 17.0,
                        fontFamily: 'SourceSansPro Regular',
                      ),
                    ),
                    SizedBox(
                      height: 34.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            icon: Icon(Icons.camera),
                            onPressed: () {},
                            label: Container(
                              margin: EdgeInsets.symmetric(vertical: 16.0),
                              child: Text(
                                "Google",
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xffEA4335),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        Expanded(
                          child: ElevatedButton.icon(
                            label: Container(
                              margin: EdgeInsets.symmetric(vertical: 16.0),
                              child: Text(
                                "Facebook",
                              ),
                            ),
                            onPressed: () {},
                            icon: Icon(Icons.facebook),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff1877F2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 32.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xff25283A),
                        hintText: "Username",
                        hintStyle: TextStyle(
                          color: Colors.white60,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SourceSansPro Regular',
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white60,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide.none),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xff25283A),
                        hintText: "Email Address",
                        hintStyle: TextStyle(
                          color: Colors.white60,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SourceSansPro Regular',
                        ),
                        prefixIcon: Icon(
                          Icons.mail_outline,
                          color: Colors.white60,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide.none),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xff25283A),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.white60,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SourceSansPro Regular',
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white60,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide.none),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 18.0),
                              child: Text(
                                "Sign Up",
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff00B761),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBackground() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(0xff1E1C2A),
        ),
        Positioned(
          top: -70,
          left: 86,
          child: Transform.rotate(
            angle: pi / 6,
            child: Container(
              width: 70,
              height: 150,
              decoration: BoxDecoration(
                  color: Color(0xff00B761),
                  borderRadius: BorderRadius.circular(18.0)),
            ),
          ),
        ),
      ],
    );
  }
}
