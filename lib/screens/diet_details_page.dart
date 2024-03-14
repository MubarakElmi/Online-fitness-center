import 'package:flutter/material.dart';

class DietDetailsPage extends StatelessWidget {
  final Diet diet;

  DietDetailsPage({required this.diet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(diet.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              diet.description,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'Benefits:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              diet.benefits,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'Plan:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              diet.plan,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class Diet {
  final String name;
  final String description;
  final String benefits;
  final String imageUrl;
  final String plan;

  Diet({
    required this.name,
    required this.description,
    required this.benefits,
    required this.imageUrl,
    required this.plan,
  });
}
