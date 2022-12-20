import 'package:flutter/material.dart';
import 'package:lile_instagram_ui/pages/account.dart';
import 'package:lile_instagram_ui/pages/home.dart';
import 'package:lile_instagram_ui/pages/reels.dart';
import 'package:lile_instagram_ui/pages/search.dart';
import 'package:lile_instagram_ui/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  void _navigateBottomNavbar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    UserHome(),
    UserSearh(),
    UserReels(),
    UserShop(),
    UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _navigateBottomNavbar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label:'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call),label:'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop),label:'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label:'account'),
        ],
      ),
    );
  }
}
