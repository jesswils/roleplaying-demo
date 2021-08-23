import 'package:flutter/material.dart';

class TextTransition extends StatefulWidget {
  const TextTransition({Key? key}) : super(key: key);

  @override
  _TextTransitionState createState() => _TextTransitionState();
}

class _TextTransitionState extends State<TextTransition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(9.0, 25.0, 9.0, 0.0),
            ),
          ],
        ),
      ),
    );
  }
}
