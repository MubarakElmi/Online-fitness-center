import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:spor/Models/square_title.dart';
import 'package:spor/reusable_widgets/auth_service.dart';
import 'package:spor/reusable_widgets/reusable_widgets.dart';
import 'package:spor/screens/home_screen.dart';
import 'package:spor/screens/signup.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  String _errorText = ''; // Add this variable to store error messages

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/ba1.jpg'), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/taldo3.png"),
                SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter UserName", Icons.person_outline, false,
                    _emailTextController),
                SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.person_outline, true,
                    _passwordTextController),
                SizedBox(
                  height: 20,
                ),
                signInSignUpButton(context, true, () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }).onError((error, stackTrace) {
                    setState(() {
                      if (error.runtimeType == FirebaseAuthException &&
                          (error as FirebaseAuthException).code ==
                              'user-not-found') {
                        _errorText = "User not found. Please sign up.";
                      } else {
                        _errorText = "Error: ${error.toString()}";
                      }
                    });
                    print("Error ${error.toString()}");
                  });
                }),
                signUpOption(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Or With Google",
                  style: const TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                SquareTitle(
                  onTap: () async {
                    User? user = await AuthService().signInWithGoogle();
                    if (user != null) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    }
                  },
                  imagePath0: "assets/images/google.png",
                  onPressed: () {},
                ),
                // Display error text
                _errorText.isNotEmpty
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          _errorText,
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Dont have account",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
