import 'package:flutter/material.dart';
import 'package:lile_instagram_ui/util/account_tab1.dart';
import 'package:lile_instagram_ui/util/account_tab3.dart';
import 'package:lile_instagram_ui/util/account_tab4.dart';
import 'package:lile_instagram_ui/util/buble_stories.dart';

import '../util/account_tab2.dart';

class UserAccount extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('YUSUKEEEEEE',
                style: TextStyle(
                    color: Colors.black,
                    fontStyle:FontStyle.italic ),
              ),
              Row(
                children: [
                  Icon(Icons.add_box_outlined),
                  SizedBox(width: 10,),
                  Icon(Icons.menu),
                ],
              ),

            ],
          ),
        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('222',style: TextStyle(
                                fontWeight: FontWeight.bold,fontSize: 20
                            ),),
                            Text('Posts'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('9766',style: TextStyle(
                                fontWeight: FontWeight.bold,fontSize: 20
                            ),),
                            Text('Folowers'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('30',style: TextStyle(
                                fontWeight: FontWeight.bold,fontSize: 20
                            ),),
                            Text('Folowing'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('@YUSUKEEEEE',
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),),
                  Text('i create apps and　games',
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),),
                  Text('youtube.com/yusuke',
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                              padding: EdgeInsets.all(5),
                              child: Center(child: Text('Edit Profile')),
                             decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        )
                      ),
                    ),
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.all(2.0),
                           child: Container(
                            padding: EdgeInsets.all(5),
                            child: Center(child: Text('Ad Tools')),
                            decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        )

                      ),
                    ),
                    Expanded(
                      child: Padding(
                         padding: const EdgeInsets.all(2.0),
                         child: Container(
                          padding: EdgeInsets.all(5),
                          child: Center(child: Text('Insights')),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10),
              child: Row(
                children: [
                  BubbleStories(text: 'story 1'),
                  BubbleStories(text: 'story 2'),
                  BubbleStories(text: 'story 3'),
                  BubbleStories(text: 'story 4'),
                  BubbleStories(text: 'story 5'),
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
                    icon: Icon(Icons.shop),
                  ),
                  Tab(
                    icon: Icon(Icons.people),
                  ),
                ]
            ),
            Expanded(
                child: TabBarView(
                 children: [
                  AccountTab1(),
                  AccountTab2(),
                  AccountTab3(),
                  AccountTab4(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
