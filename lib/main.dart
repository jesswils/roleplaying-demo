import 'package:flutter/material.dart';

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
        appBar: AppBar(
          backgroundColor: Color(0xFFF5E8E3),
          title: Image.asset('./assets/images/byrd-logo.png'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}
