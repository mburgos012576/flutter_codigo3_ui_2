import 'package:flutter/material.dart';
import 'package:flutter_codigo3_ui_2/widgets/widgets.dart';

class UI_2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildBackground(),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    widgetHead(
                      titulo: "Let's sign you in",
                    ),
                    SizedBox(
                      height: 34.0,
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
                      height: 20,
                    ),
                    Row(
                      children: [
                        widgetElevationButton(texto: "Log In"),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    widgetRichttextNavigator(textoSpan: "Forgot Password?",),
                    SizedBox(
                      height: 30,
                    ),
                    widgetRichttextNavigator(texto: "Don\'t have an account?",textoSpan: "Sign Up",),
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
