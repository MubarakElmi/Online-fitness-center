import 'package:flutter/material.dart';

class SquareTitle extends StatelessWidget {
  final String imagePath0;
  final Function()? onTap;
  const SquareTitle(
      {super.key,
      this.onTap,
      required this.imagePath0,
      required Null Function() onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(16),
            color: Color.fromARGB(255, 124, 146, 158),
          ),
          child: Image.asset(
            imagePath0,
            height: 40,
          ),
        ));
  }
}
