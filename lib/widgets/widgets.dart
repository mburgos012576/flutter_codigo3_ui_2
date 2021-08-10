import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_codigo3_ui_2/pages/ui_2.dart';
import 'package:flutter/gestures.dart';

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

class widgetHead extends StatelessWidget {
  String titulo;
  widgetHead({required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          this.titulo,
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
      ],
    );
  }
}

class widgetTexField extends StatelessWidget {
  String texto;
  IconData icon;
  widgetTexField({required this.texto, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xff25283A),
        hintText: this.texto,
        hintStyle: TextStyle(
          color: Colors.white60,
          fontWeight: FontWeight.w500,
          fontFamily: 'SourceSansPro Regular',
        ),
        prefixIcon: Icon(
          this.icon,
          color: Colors.white60,
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none),
      ),
    );
  }
}

class widgetElevationButton extends StatelessWidget {
  String texto;
  widgetElevationButton({required this.texto});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {},
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 18.0),
          child: Text(
            this.texto,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Color(0xff00B761),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}

class widgetRichttextNavigator extends StatelessWidget {
  String? texto;
  String textoSpan;
  widgetRichttextNavigator({this.texto, required this.textoSpan});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
                text: this.texto,//'Don\'t have an account?',
                style: TextStyle(
                    color: Colors.white, fontSize: 12,),
                children: <TextSpan>[
                  TextSpan(
                      text: this.textoSpan,//' Sign up',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 12),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // navigate to desired screen
                          //print("Ontapppp");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder:
                                    (BuildContext context) =>
                                        UI_2()),
                          );
                        }),
                ]),
          ),
        ));
  }
}