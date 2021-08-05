import 'package:flutter/material.dart';
import 'package:project1_gsg/screens/HomeScreen.dart';
import 'package:project1_gsg/screens/ProfileScreen.dart';
import 'package:project1_gsg/screens/discover_screen.dart';

class BNbar extends StatefulWidget {

  static String routeName = "/BNbar";

  @override
  _BNbarState createState() => _BNbarState();
}

class _BNbarState extends State<BNbar> with SingleTickerProviderStateMixin {
  int _selectedPageIndex = 0;
  List<Map<String, Object>> _pages;

  @override
  void initState() {
    _pages = [
      {
        "page": HomeScreen(),
      },
      {
        "page": ProfileScreen(),
      },

      {
        "page": DiscoverScreen(),
      },
    ];
    super.initState();
  }

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(

        onTap: _selectedPage,
        currentIndex: _selectedPageIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.purple,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded), label: 'Discover'),
        ],
      ),
      body: _pages[_selectedPageIndex]["page"],
    );
  }
}
