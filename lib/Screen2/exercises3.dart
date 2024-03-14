// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spor/Models/fit_list.dart';
import 'package:spor/Models/fit.dart';
import 'package:spor/Screen2/abs2.dart';
import 'package:spor/Screen2/cardio.dart';
import 'package:spor/Screen2/exercises2.dart';
import 'package:spor/Screen2/exercises3.dart';
import 'package:spor/Screen2/legs2.dart';
import 'package:spor/Screen2/triceps2.dart';
import 'package:spor/reusable_widgets/bottom_nav.dart';
import 'package:spor/screens/abs.dart';
import 'package:spor/screens/back.dart';
import 'package:spor/screens/biceps.dart';
import 'package:spor/screens/calf.dart';
import 'package:spor/screens/chest.dart';
import 'package:spor/screens/exercises.dart';
import 'package:spor/screens/forearms.dart';
import 'package:spor/screens/legs.dart';
import 'package:spor/screens/shoulders.dart';
import 'package:spor/screens/triceps.dart';

class ExercisesPageef extends StatefulWidget {
  const ExercisesPageef({super.key});

  @override
  State<ExercisesPageef> createState() => _ExercisesPageState();
}

class _ExercisesPageState extends State<ExercisesPageef> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FitList>(
      builder: (context, value, child) => Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            automaticallyImplyLeading: true,
            title: const Text("Home Exercises",
                style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.purple,
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(50))),
          ),
        ),
        body: Container(
          color: Colors.purple,
          child: Center(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(200))),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Text(
                      'Elevate Your Fitness Experience',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Transform Your Fitness Journey with Us',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Expanded(
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemCount: value.fitList.length > 4
                              ? 4
                              : value.fitList.length,
                          itemBuilder: (context, index) {
                            //get individual exercises
                            Fit eachExercises = value.fitList[index];

                            //return the title for this exercises
                            Widget buildExerciseWidget(
                                Fit eachExercise, BuildContext context) {
                              return GestureDetector(
                                onTap: () {
                                  switch (eachExercise.name) {
                                    case "ABS":
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => CardioPage()),
                                      );
                                      break;

                                    case "Back":
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => AbsPagee()),
                                      );
                                      break;

                                    case "Biceps":
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => LegsPagess(),
                                        ),
                                      );
                                      break;

                                    case "Triceps":
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => TricepsPagee(),
                                        ),
                                      );
                                      break;

                                    case "Forearms":
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ForearmsPage(),
                                        ),
                                      );
                                      break;

                                    case "Chest":
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ChestPage(),
                                        ),
                                      );
                                      break;

                                    case "Legs":
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => LegsPages(),
                                        ),
                                      );
                                      break;

                                    default:
                                      break;
                                  }
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      width: 150,
                                      height: 170,
                                      margin: EdgeInsets.only(
                                        left: 20,
                                      ),
                                      padding: EdgeInsets.only(bottom: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              eachExercise.imagePath2),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 3,
                                            offset: Offset(5, 5),
                                            color: Colors.blueGrey,
                                          ),
                                          BoxShadow(
                                            blurRadius: 3,
                                            offset: Offset(-5, -5),
                                            color: Colors.blueGrey,
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                            eachExercise.name2,
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }

                            // Usage:

                            return buildExerciseWidget(eachExercises, context);
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
