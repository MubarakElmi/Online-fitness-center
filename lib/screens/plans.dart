import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spor/Screen2/exercises2.dart';
import 'package:spor/Screen2/exercises3.dart';
import 'package:spor/screens/abs.dart';
import 'package:spor/screens/bmi.dart';
import 'package:spor/screens/exercises.dart';
import 'package:spor/screens/home_screen.dart';
import 'package:spor/screens/measurements.dart';
import 'package:spor/screens/nutrition.dart';

class PlansPage extends StatefulWidget {
  const PlansPage({Key? key}) : super(key: key);

  @override
  State<PlansPage> createState() => _PlansPageState();
}

class _PlansPageState extends State<PlansPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text('Plans',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Colors.white)),
                ),
                const SizedBox(height: 30)
              ],
            ),
          ),
          Container(
            color: Colors.blueGrey,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(200))),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  itemDashboard(
                    'Home',
                    CupertinoIcons.play_rectangle,
                    Colors.deepOrange,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExercisesPageef(),
                        ),
                      );
                    },
                  ),
                  itemDashboard(
                    'Measurements',
                    CupertinoIcons.graph_circle,
                    Colors.green,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MeasurementsPage(),
                        ),
                      );
                    },
                  ),
                  itemDashboard(
                    'Pro++',
                    CupertinoIcons.person_2,
                    Colors.purple,
                    () {},
                  ),
                  itemDashboard(
                    'BMI Calculator',
                    CupertinoIcons.app_badge,
                    Colors.brown,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BmiPage(),
                        ),
                      );
                    },
                  ),
                  itemDashboard(
                    'Nutrition',
                    CupertinoIcons.tree,
                    Colors.indigo,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NutritionPage(),
                        ),
                      );
                    },
                  ),
                  itemDashboard(
                    'About',
                    CupertinoIcons.question_circle,
                    Colors.blue,
                    () {},
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }

  Widget itemDashboard(
    String title,
    IconData iconData,
    Color background,
    VoidCallback onTap,
  ) =>
      GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 5),
                  color: Theme.of(context).primaryColor.withOpacity(.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: background,
                  shape: BoxShape.circle,
                ),
                child: Icon(iconData, color: Colors.white),
              ),
              const SizedBox(height: 8),
              Text(
                title.toUpperCase(),
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
      );
}
