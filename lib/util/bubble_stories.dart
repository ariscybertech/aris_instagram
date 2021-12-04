import 'package:flutter/material.dart';

class BubbleStoies extends StatelessWidget {
  final text;

  const BubbleStoies({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[400],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(text),
        ],
      ),
    );
  }
}
