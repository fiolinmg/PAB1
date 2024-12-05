import 'package:flutter/material.dart';
import 'package:flutter_button_navigation/screens/favorite_screen.dart';
import 'package:flutter_button_navigation/screens/home_screen.dart';
import 'package:flutter_button_navigation/screens/profile_screen.dart';
import 'package:flutter_button_navigation/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}
  class _MainScreenState extends State<MainScreen> {
    int _selectedIndex = 0;

    static const List<Widget> _screenOptions = <Widget>[
      HomeScreen(),
      SearchScreen(),
      FavoriteScreen(),
      ProfileScreen(),
    ];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: _screenOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            //item 1
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            //item 2
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            //item 3
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            //item 4
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          showSelectedLabels: true,
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.deepPurple.shade200,
        ),
      );
    }
  }
