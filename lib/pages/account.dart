import 'package:aris_instagram/util/account_tab/account_tab1.dart';
import 'package:aris_instagram/util/account_tab/account_tab2.dart';
import 'package:aris_instagram/util/account_tab/account_tab3.dart';
import 'package:aris_instagram/util/account_tab/account_tab4.dart';
import 'package:aris_instagram/util/bubble_stories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class UserAccount extends StatelessWidget {
  UserAccount({Key key}) : super(key: key);
  TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // profile picture
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),

                  // number of posts, followers, follows
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Column(
                          children: [
                            Text(
                              '237',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            Text('Posts'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Column(
                          children: [
                            Text(
                              '3930',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            Text('Followers'),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            '40',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          Text('Following'),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            // Name and bio
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'koko',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'I create apps & games',
                    ),
                  ),
                  Text(
                    'm.youtube.com/ariscybertech/',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Expanded(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Text('Edit profile'),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Expanded(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Text('Ad Tools'),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Expanded(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Text('Insights'),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // stories
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Row(
                children: [
                  BubbleStories(text: 'story 1'),
                  BubbleStories(text: 'story 2'),
                  BubbleStories(text: 'story 3'),
                  BubbleStories(text: 'story 4'),
                ],
              ),
            ),
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined),
                ),
                Tab(
                  icon: Icon(Icons.video_call),
                ),
                Tab(
                  icon: Icon(Icons.video_call),
                ),
                Tab(
                  icon: Icon(Icons.person),
                )
              ],
              controller: _tabController,
            ),

            Expanded(
              child: TabBarView(
                children: [
                  AccountTab1(),
                  AccountTab2(),
                  AccountTab3(),
                  AccountTab4(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
