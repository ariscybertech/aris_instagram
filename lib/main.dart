import 'package:aris_instagram/aris/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ArisInsta());
}

class ArisInsta extends StatelessWidget {
  const ArisInsta({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Aris(),
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
    );
  }
}
//