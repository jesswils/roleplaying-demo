import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:role_playing_demo/constants.dart';
import 'package:animations/animations.dart';

class TextTransition extends StatefulWidget {
  @override
  _TextTransitionState createState() => _TextTransitionState();
}

class _TextTransitionState extends State<TextTransition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(9.0, 25.0, 9.0, 0.0),
              constraints: BoxConstraints(
                  maxHeight: 300.0,
                  maxWidth: 400.0,
                  minWidth: 150.0,
                  minHeight: 150.0),
              child: kFirstParagraph,
            ),
          ],
        ),
      ),
    );
  }
}

// SizedBox(
//   height: 100.0,
//   width: 200.0,
// ),
