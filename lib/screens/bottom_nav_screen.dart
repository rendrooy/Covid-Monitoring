import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  PageController _pageController = PageController();
  List<Widget> _screen = [];

  int _selectedindex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screen,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,
                  color: _selectedindex == 0 ? Colors.blue : Colors.grey),
              title: Text('Home',
                  style: TextStyle(
                      color: _selectedindex == 0 ? Colors.blue : Colors.grey))),
          BottomNavigationBarItem(
              icon: Icon(Icons.star,
                  color: _selectedindex == 1 ? Colors.blue : Colors.grey),
              title: Text('Statistics',
                  style: TextStyle(
                      color: _selectedindex == 1 ? Colors.blue : Colors.grey))),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,
                  color: _selectedindex == 2 ? Colors.blue : Colors.grey),
              title: Text('Account',
                  style: TextStyle(
                      color: _selectedindex == 2 ? Colors.blue : Colors.grey))),
        ],
      ),
    );
  }
}
