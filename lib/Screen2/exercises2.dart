// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spor/Models/fit_list.dart';
import 'package:spor/Models/fit.dart';
import 'package:spor/Screen2/exercises3.dart';
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

class ExercisesPagee extends StatefulWidget {
  const ExercisesPagee({super.key});

  @override
  State<ExercisesPagee> createState() => _ExercisesPageState();
}

class _ExercisesPageState extends State<ExercisesPagee> {
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            height: 50,
                            width: 150,
                            child: ElevatedButton.icon(
                              label: Text(
                                "Men",
                                style: TextStyle(color: Colors.black),
                              ),
                              icon: Icon(
                                Icons.male,
                                color: Colors.blue,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ExercisesPagee(),
                                  ),
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.grey.shade100),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            height: 50,
                            width: 150,
                            child: ElevatedButton.icon(
                                label: Text(
                                  "Female",
                                  style: TextStyle(color: Colors.black),
                                ),
                                icon: Icon(Icons.female),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ExercisesPageef(),
                                    ),
                                  );
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.grey.shade100),
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Expanded(
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemCount: value.fitList.length,
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
                                            builder: (context) => AbsPage()),
                                      );
                                      break;

                                    case "Back":
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => BackPage()),
                                      );
                                      break;

                                    case "Biceps":
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => BicepsPage(),
                                        ),
                                      );
                                      break;

                                    case "Triceps":
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => TricepsPage(),
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

                                    case "Shoulders":
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ShouldersPage(),
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

                                    case "Calf":
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => CalfPage(),
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
                                              eachExercise.imagePath),
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
                                            eachExercise.name,
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
