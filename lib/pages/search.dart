import 'package:flutter/material.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Icon(Icons.search),
            Container(
              color: Colors.grey[500],
              child: Text('Search'),
            )
          ],
        ),
      ),
      body: Center(child: Text('SEARCH')),
    );
  }
}
