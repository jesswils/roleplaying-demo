import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:role_playing_demo/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class TypewriterText extends StatefulWidget {
  @override
  _TypewriterTextState createState() => _TypewriterTextState();
}

class _TypewriterTextState extends State<TypewriterText> {
  final string = 'There was nothing hugely special about the run today.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder<int>(
          duration: Duration(milliseconds: 1000),
          builder: (BuildContext _, int value, Widget) {
            return Text(string.substring(0, value) + '');
          },
          tween: IntTween(begin: 0, end: string.length),
        ),
      ),
    );
  }
}

// @override
// void initState() {
//   super.initState();
//   controller =
//       AnimationController(duration: const Duration(seconds: 4), vsync: this);
//   animation = Tween<double>(begin: 0, end: 170).animate(controller)
//     ..addListener(() {
//       setState(() {});
//     });
//   controller.forward();
// }

// SizedBox(
//   height: 100.0,
//   width: 200.0,
// ),
//   margin: EdgeInsets.fromLTRB(9.0, 25.0, 9.0, 0.0),
//   constraints: BoxConstraints(
//   maxHeight: 300.0,
//   maxWidth: 400.0,
//   minWidth: 150.0,
//   minHeight: 150.0),

// AnimatedTextKit(
// animatedTexts: [
// TyperAnimatedText(
// 'There was nothing hugely special about the run today.',
// textStyle: TextStyle(
// fontFamily: 'Epilogue',
// height: 33.0,
// fontSize: 21.0,
// ),
// speed: Duration(milliseconds: 50),
// ),
