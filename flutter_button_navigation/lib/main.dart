import 'package:flutter/material.dart';
import 'package:flutter_button_navigation/models/candi.dart';
import 'package:flutter_button_navigation/screens/favorite_screen.dart';
import 'package:flutter_button_navigation/screens/home_screen.dart';
import 'package:flutter_button_navigation/screens/main_screen.dart';
import 'package:flutter_button_navigation/screens/profile_screen.dart';
import 'package:flutter_button_navigation/screens/search_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      onGenerateRoute: (settings) {
        if (settings.name == '/detail') {
          final varCandi = settings.arguments as Candi;
        }
      },
    );
  }
}