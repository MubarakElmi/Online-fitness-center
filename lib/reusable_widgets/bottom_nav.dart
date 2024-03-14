import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class MyBottomNav extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNav({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
              onTabChange: (value) => onTabChange!(value),
              backgroundColor: Colors.blueGrey,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Color.fromARGB(255, 177, 176, 179),
              gap: 8,
              
              padding: EdgeInsets.all(16),
              tabs: [
                GButton(icon: Icons.home,
                text: "Home",
               
                ), 
                GButton(icon: Icons.work_outline,
                text: "plans",
               
                ),
                GButton(icon: Icons.settings,
                text: "Settings",
               
                ),
                
              ],
            ),
    );
  }
}