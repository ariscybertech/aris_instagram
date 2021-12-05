import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {
  const ExploreGrid({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
    itemBuilder: (context, index) {
      return Padding(
        padding: EdgeInsets.all(2.0),
        child: Container(
          color: Colors.deepPurple[100]
        ),
      );
    });
  }
}