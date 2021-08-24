import 'package:flutter/material.dart';

class Offset extends StatefulWidget {
  @override
  _OffsetState createState() => _OffsetState();
}

class _OffsetState extends State<Offset> with SingleTickerProviderStateMixin {
  late Animation<Offset> animation;
  late AnimationController controller;
//the late keyword is used to mark variables that will be initalised later
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    )..forward();
    animation = Tween<Offset>(
      begin: Offset(0.7, 0.1),
      end: Offset.zero,
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
