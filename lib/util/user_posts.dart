import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class UserPosts extends StatelessWidget {
  final String name;
  const UserPosts({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // profile photo
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 10),
                  // name
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.menu),
            ],
          ),
        ),
        // post
        Container(
          height: 400,
          color: Colors.grey[300],
        ),
        // bellow the post -> buttons and comments
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark)
            ],
          ),
        ),

        // liked by ...
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text('Liked by '),
              Text(
                'mitchkoko',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and '),
              Text(
                'others',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),

        // caption
        Padding(
            padding: const EdgeInsets.only(left: 16, top: 8),
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: [
                TextSpan(
                    text: name,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        'i turn the dirty they throving into riches til in filthy'),
              ]),
            )),
      ],
    );
  }
}
