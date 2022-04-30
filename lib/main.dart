import 'dart:ui';

import 'package:amprime/Home.dart';
import 'package:amprime/Kids.dart';
import 'package:amprime/Movies.dart';
import 'package:amprime/TVShows.dart';
import 'package:flutter/material.dart';

import 'BottomNavigationBar/buildBottomNavigationBar.dart';
void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: amsp(),
      );
}

class amsp extends StatefulWidget {
  const amsp({Key? key}) : super(key: key);

  @override
  _amspState createState() => _amspState();
}

class _amspState extends State<amsp> with SingleTickerProviderStateMixin {

 int currentIndex =0;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color(0xFF342f4a),
        body: DefaultTabController(
          length: 4,
          child: NestedScrollView(
            headerSliverBuilder: (context, value) {
              return[
                SliverAppBar(
                  expandedHeight: 120,
                  backgroundColor: Color(0xFF242840),
                  title: Center(
                    child: SizedBox(
                        width:80 ,
                        height: 40,
                        child: Image.asset('images/PngItem_5076237.png')),
                  ),
                  floating: true,
                  pinned: true,
                  bottom: TabBar(
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        child: Text('Home'),
                      ),
                      Tab(
                        child: Text('TVShows'),
                      ),
                      Tab(
                        child: Text('Movies'),
                      ),
                      Tab(
                        child: Text('Kids'),
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(child: tabs[currentIndex]),
              ];
            },
            body: TabBarView(
              children: [
                Home(),
                TVShows(),
                Movies(),
                Kids(),
            ],
            ),
          ),
        ),
    bottomNavigationBar: BottomNavigationBar(
      onTap: (index)=>setState(()=>currentIndex=index),
      currentIndex: currentIndex,
      selectedItemColor: Colors.blue,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
          label: 'Home',
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(icon: Icon(Icons.amp_stories_outlined),
            label: 'Channels',
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(icon: Icon(Icons.search_outlined),
            label: 'Find',
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(icon: Icon(Icons.download_outlined),
            label: 'Downloads',
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined,
          color: Colors.blue,
          ),
            label: 'My Stuff',
          backgroundColor: Colors.black,
        ),
      ],
    ),
      );
}

final List<Widget> tabs =[
  Center(
    child: Text('Tab 1'),
  ),
  Center(
    child: Text('Tab 1'),
  ),
  Center(
    child: Text('Tab 1'),
  ),
  Center(
    child: Text('Tab 1'),
  ),
  Center(
    child: Text('Tab 1'),
  ),
];
