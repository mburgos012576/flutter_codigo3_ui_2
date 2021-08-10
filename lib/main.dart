import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo3_ui_2/widgets/widgets.dart';

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
                    widgetHead(
                      titulo: "Let's log you in ",
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
                    widgetTexField(
                      texto: "Username",
                      icon: Icons.person,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    widgetTexField(
                      texto: "Email Adress",
                      icon: Icons.email,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    widgetTexField(
                      texto: "Password",
                      icon: Icons.lock,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        widgetElevationButton(
                          texto: "Sign Up",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    widgetRichttextNavigator(texto: 'Don\'t have an account?',textoSpan: "Sign In",)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


