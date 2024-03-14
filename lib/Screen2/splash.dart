import 'package:flutter/material.dart';
import 'package:spor/reusable_widgets/reusable_widgets.dart'; // Assuming this contains your custom widgets
import 'package:spor/screens/home_screen.dart';

class SignInScreene extends StatefulWidget {
  const SignInScreene({Key? key}) : super(key: key);

  @override
  State<SignInScreene> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreene> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/ba1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              20,
              MediaQuery.of(context).size.height * 0.2,
              20,
              0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                logoWidget("assets/images/taldo3.png"),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to HomePage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: Text(
                      'Start',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blueGrey),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                    elevation: MaterialStateProperty.all<double>(5),
                    shadowColor:
                        MaterialStateProperty.all<Color>(Colors.blueGrey),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.zero),
                    textStyle: MaterialStateProperty.all<TextStyle>(
                      TextStyle(fontSize: 20),
                    ),
                    minimumSize: MaterialStateProperty.all<Size>(Size(150, 50)),
                    side: MaterialStateProperty.all<BorderSide>(
                      BorderSide(color: Colors.white, width: 2),
                    ),
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered)) {
                          return Colors.blueGrey;
                        }
                        return null; // Use the default overlay color
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
