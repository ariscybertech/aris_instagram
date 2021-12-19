import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:aris_instagram/aris/pages/account_page.dart';
import 'package:aris_instagram/aris/pages/activity_page.dart';
import 'package:aris_instagram/aris/pages/home_page.dart';
import 'package:aris_instagram/aris/pages/new_post_page.dart';
import 'package:aris_instagram/aris/pages/search_page.dart';
import 'package:aris_instagram/aris/theme/colors.dart';
import 'package:aris_instagram/aris/util/bottom_navigation_bar_json.dart';

class Aris extends StatefulWidget {
  @override
  _ArisState createState() => _ArisState();
}

class _ArisState extends State<Aris> {
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getBottomNavigationBar(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: indexPage,
      children: [
        HomePage(),
        SearchPage(),
        NewPostPage(),
        ActivityPage(),
        AccountPage(),
      ],
    );
  }

  Widget getBottomNavigationBar() {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: bgLightGrey,
        border: Border(top: BorderSide(width: 1, color: bgDark.withOpacity(0.3))),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(icons.length, (index) {
            return IconButton(
              onPressed: () {
                setState(() {
                  indexPage = index;
                });
              },
              icon: SvgPicture.asset(
                indexPage == index 
                ? icons[index]['active']
                : icons[index]['inactive'], 
                width: 25, 
                height: 25,
              ),
            );
          })
        ),
      ),
    );
  }
}