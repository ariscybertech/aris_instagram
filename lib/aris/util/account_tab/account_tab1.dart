import 'package:flutter/material.dart';

class AccountTab1 extends StatelessWidget {
  const AccountTab1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 5,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(2),
          child: Container(
            color: Colors.blue[100],
          ),
        );
      },
    );
  }
}
