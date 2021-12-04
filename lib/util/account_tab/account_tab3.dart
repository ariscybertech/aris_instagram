import 'package:flutter/material.dart';

class AccountTab3 extends StatelessWidget {
  const AccountTab3({Key key}) : super(key: key);

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
            color: Colors.red[100],
          ),
        );
      },
    );
  }
}
