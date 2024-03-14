import 'package:flutter/material.dart';
import 'package:spor/screens/diet_details_page.dart';

class NutritionPage extends StatelessWidget {
  const NutritionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Diet> dietList = [
      Diet(
        name: 'Low-Carb Diet',
        description: 'Focuses on reducing the intake of carbohydrates.',
        benefits: 'Helps in weight loss and stabilizing blood sugar levels.',
        imageUrl: 'assets/images/Low-Carb_Diet.png',
        plan: '1. Limit carb intake to around 20-50 grams per day.\n'
            '2. Consume high-protein foods such as meat, fish, eggs, and tofu.\n'
            '3. Eat plenty of non-starchy vegetables.\n'
            '4. Avoid high-carb foods like bread, pasta, rice, and sugary snacks.',
      ),
      Diet(
        name: 'Keto Diet',
        description:
            'High-fat, low-carb diet to induce ketosis for fat burning.',
        benefits: 'Promotes rapid weight loss by burning fat for energy.',
        imageUrl: 'assets/images/Keto_Diet.png',
        plan:
            '1. Consume high-fat foods such as meat, fish, eggs, avocados, and cheese.\n'
            '2. Keep carbohydrate intake very low, typically below 20-50 grams per day.\n'
            '3. Include moderate amounts of protein in your diet.\n'
            '4. Drink plenty of water and stay hydrated.\n'
            '5. Monitor ketone levels to ensure you are in ketosis.',
      ),
      Diet(
        name: 'Ramadan Diet',
        description: 'Diet plan during the month of Ramadan.',
        benefits: 'Helps in spiritual cleansing and discipline.',
        imageUrl: 'assets/images/Ramadan_Diet.png',
        plan:
            '1. Suhoor: Have a balanced meal containing complex carbohydrates, protein, and healthy fats to keep you energized throughout the day.\n'
            '2. Iftar: Break your fast with dates and water, followed by a balanced meal including fruits, vegetables, protein, and carbohydrates.\n'
            '3. Avoid overeating during iftar to prevent digestive issues and weight gain.\n'
            '4. Drink plenty of water between iftar and suhoor to stay hydrated.\n'
            '5. Include light physical activity during the day to maintain fitness.',
      ),
      Diet(
        name: 'Mediterranean Diet',
        description:
            'Based on the traditional dietary patterns of the Mediterranean region.',
        benefits: 'Rich in heart-healthy fats and antioxidants.',
        imageUrl: 'assets/images/Mediterranean_Diet.png',
        plan:
            '1. Consume plenty of fruits, vegetables, whole grains, and legumes.\n'
            '2. Use olive oil as the primary source of fat.\n'
            '3. Include moderate amounts of fish, poultry, and dairy.\n'
            '4. Limit red meat and sweets.\n'
            '5. Enjoy meals with family and friends.',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Weight Loss Diet List'),
      ),
      body: ListView.builder(
        itemCount: dietList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Card(
              elevation: 2,
              child: ListTile(
                contentPadding: EdgeInsets.all(16),
                leading: Image.asset(
                  dietList[index].imageUrl,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                title: Text(
                  dietList[index].name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(dietList[index].description),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DietDetailsPage(diet: dietList[index]),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
