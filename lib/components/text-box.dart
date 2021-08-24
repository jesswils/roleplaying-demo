import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:role_playing_demo/constants.dart';
// import 'package:animations/animations.dart';

class TextTransition extends StatefulWidget {
  @override
  _TextTransitionState createState() => _TextTransitionState();
}

class _TextTransitionState extends State<TextTransition>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> animation;
  late AnimationController controller;
//the late keyword is used to mark variables that will be initalised later
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 4),
      vsync: this,
    )..forward();
    animation = Tween<Offset>(
      begin: Offset(-0.5, 0.0),
      end: Offset(0.5, 0.0),
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInCubic));
    //   ..addListener(() {
    //     setState(() {});
    //   });
    // controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(9.0, 25.0, 9.0, 0.0),
              height: 300,
              width: 400,
              child: SlideTransition(
                position: animation,
                child: kFirstParagraph,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
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
