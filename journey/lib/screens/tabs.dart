import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// Views
import 'home.dart';
import 'entries.dart';
import 'profile.dart';

class Tabs extends StatefulWidget {
  static const routeName = '/tabs';

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  List<Widget> _pages = [
    HomeView(),
    EntryView(),
    ProfileView(),
  ];

  int _selectedIndex = 0;

  void _onItemTap(int index) {
   setState(() {
     _selectedIndex = index;
   });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted),
            label: 'Entries',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple[900],
        onTap: _onItemTap,
      ),
    );
  }
}