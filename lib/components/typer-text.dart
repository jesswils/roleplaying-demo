import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TypewriterText extends StatefulWidget {
  @override
  _TypewriterTextState createState() => _TypewriterTextState();
}

class _TypewriterTextState extends State<TypewriterText> {
  final string =
      'There was nothing hugely special about the run today. Which I get - for a guide who\'s trying to keep you running - is a bit of a weird thing to say but that\'s the joy or running.';
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<int>(
      duration: Duration(milliseconds: 2000),
      builder: (BuildContext _, int value, widget) {
        return Text(
          string.substring(0, value),
          style: TextStyle(
            fontFamily: 'Epilogue',
            height: 33.0,
            fontSize: 11.0,
          ),
          textAlign: TextAlign.left,
          softWrap: true,
          overflow: TextOverflow.visible,
          maxLines: null,
        );
      },
      tween: IntTween(begin: 0, end: string.length),
    );
  }
}

// @override
// Widget build(BuildContext context) {
//   TweenAnimationBuilder(
//       child: Text(
//       string.substring(0, value),
//       style: TextStyle(
//         fontFamily: 'Epilogue',
//         height: 33.0,
//         fontSize: 11.0,
//       ),
//       textAlign: TextAlign.left,
//       softWrap: true,
//       overflow: TextOverflow.visible,
//       maxLines: null,
//     ),
//       duration: Duration(milliseconds: 2000),
//       builder: (BuildContext _, int value, widget) {
//         return FadeTransition(opacity: 0.9
//             child: Padding(
//         padding: EdgeInsets.only(top: value * 200),
//         ),
//         ),
//       }
//   );
// }

// Text(string.substring(0, value) + '');
// tween: IntTween(begin: 0, end: string.length),

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
