import 'package:aris_instagram/pages/account.dart';
import 'package:aris_instagram/pages/home.dart';
import 'package:aris_instagram/pages/reels.dart';
import 'package:aris_instagram/pages/search.dart';
import 'package:aris_instagram/pages/shop.dart';
import 'package:flutter/material.dart';

class Aris extends StatefulWidget {
  const Aris({Key key}) : super(key: key);

  @override
  _ArisState createState() => _ArisState();
}

class _ArisState extends State<Aris> {
  // navigate around the bottom nav bar
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // different pages to navigate to
  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
        ],
      ),
    );
  }
}
