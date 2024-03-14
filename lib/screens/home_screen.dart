// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:spor/Screen2/exercises2.dart';
import 'package:spor/reusable_widgets/bottom_nav.dart';
import 'package:spor/screens/abs.dart';
import 'package:spor/screens/legs.dart';
import 'package:spor/screens/plans.dart';
import 'package:spor/screens/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spor/screens/settings.dart';
import 'package:spor/screens/exercises.dart';
import 'dart:ui';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages
  final List<Widget> _screens = [
    ExercisesPage(),
    PlansPage(),
    ProfileScreen(),
    ExercisesPagee(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: MyBottomNav(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _screens[_selectedIndex],
    );
  }
}
