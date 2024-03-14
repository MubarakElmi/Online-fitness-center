import 'package:flutter/material.dart';
import 'fit.dart';

class FitList extends ChangeNotifier {
  final List<Fit> _gym = [
    Fit(
      name: "ABS",
      imagePath: "assets/images/Abs.png",
      name2: "Carido",
      imagePath2: "assets/images/cardio.png",
    ),
    Fit(
      name: "Back",
      imagePath: "assets/images/Back.png",
      name2: "Abs",
      imagePath2: "assets/images/cardio.png",
    ),
    Fit(
      name: "Biceps",
      imagePath: "assets/images/Bay.png",
      name2: "Legs",
      imagePath2: "assets/images/cardio.png",
    ),
    Fit(
      name: "Triceps",
      imagePath: "assets/images/Triceps.png",
      name2: "Full Body",
      imagePath2: "assets/images/cardio.png",
    ),
    Fit(
      name: "Forearms",
      imagePath: "assets/images/Forearms.png",
      name2: "Sit-Ups",
      imagePath2: "assets/images/cardio.png",
    ),
    Fit(
      name: "Chest",
      imagePath: "assets/images/Chest.png",
      name2: "Leg Raises",
      imagePath2: "assets/images/cardio.png",
    ),
    Fit(
      name: "Shoulders",
      imagePath: "assets/images/Sholuder.png",
      name2: "Flat Bench Lying ",
      imagePath2: "assets/images/cardio.png",
    ),
    Fit(
      name: "Legs",
      imagePath: "assets/images/legs.png",
      name2: "Steated Jackknife",
      imagePath2: "assets/images/cardio.png",
    ),
    Fit(
      name: "Calf",
      imagePath: "assets/images/Calf.png",
      name2: "Twisting Hip Raise",
      imagePath2: "assets/images/cardio.png",
    ),
  ];

  // get exer list
  List<Fit> get fitList => _gym;
}
