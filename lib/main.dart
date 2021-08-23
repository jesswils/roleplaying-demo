import 'package:flutter/material.dart';
import 'components/text-box.dart';
// import 'components/fade-in.dart';

void main() {
  runApp(Demo());
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      title: 'Roleplaying Demo',
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(45.0),
          child: AppBar(
            backgroundColor: Color(0xFFF5E8E3),
            title: Image.asset(
              './assets/images/byrd-logo.png',
              fit: BoxFit.fill,
              height: 150.0,
            ),
          ),
        ),
        body: TextTransition(),
      ),
    );
  }
}
