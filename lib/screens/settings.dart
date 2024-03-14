import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:spor/screens/signin.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late User? _user;

  @override
  void initState() {
    super.initState();
    _getUserData();
  }

  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignInScreen()));
  }

  Future<void> _getUserData() async {
    User? user = FirebaseAuth.instance.currentUser;
    setState(() {
      _user = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          title: const Text("Profile", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blueGrey,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              if (_user != null) ...[
                const SizedBox(height: 10),
                Text(
                  ' ${_user!.email ?? "N/A"}',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.blueGrey,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                      minimumSize: Size(200, 40), //////// HERE
                    ),
                    onPressed: _signOut,
                    child: Text(
                      'Logout',
                      style: TextStyle(color: Colors.black),
                    )),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
