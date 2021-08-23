import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:role_playing_demo/constants.dart';

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
              child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    'There was nothing hugely special about the run today. ',
                    textStyle: const TextStyle(
                      fontFamily: 'Epilogue',
                      height: 33.0,
                      fontSize: 21.0,
                    ),
                    speed: const Duration(milliseconds: 2000),
                  ),
                  TyperAnimatedText('Which I get'),
                  TyperAnimatedText(
                      'for a guide who\'s trying to keep you running - is a bit of a weird thing to say'),
                  TyperAnimatedText('but that\'s the joy of running.'),
                  TyperAnimatedText(
                    'Some runs are just for the sheer joy of being outside, on your feet and moving through the morning sunshine.',
                    speed: const Duration(milliseconds: 2000),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
