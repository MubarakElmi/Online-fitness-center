import 'package:flutter/material.dart';

class MeasurementsPage extends StatefulWidget {
  const MeasurementsPage({Key? key}) : super(key: key);

  @override
  _MeasurementsPageState createState() => _MeasurementsPageState();
}

class _MeasurementsPageState extends State<MeasurementsPage> {
  TextEditingController weightController = TextEditingController();
  TextEditingController waistController = TextEditingController();
  TextEditingController chestController = TextEditingController();
  List<MeasurementItem> measurementItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Measurements Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Weight (kg)'),
            ),
            TextField(
              controller: waistController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Waist (cm)'),
            ),
            TextField(
              controller: chestController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Chest (cm)'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Validate input and add measurements
                if (_validateInput()) {
                  MeasurementItem newMeasurement = MeasurementItem(
                    date: DateTime.now(),
                    weight: double.parse(weightController.text),
                    waist: double.parse(waistController.text),
                    chest: double.parse(chestController.text),
                  );

                  setState(() {
                    measurementItems.add(newMeasurement);
                    _clearInputFields();
                  });
                }
              },
              child: Text('Log Measurements'),
            ),
            SizedBox(height: 16),
            Text(
              'Measurement Log:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: measurementItems.length,
                itemBuilder: (context, index) {
                  return MeasurementItemCard(
                      measurementItem: measurementItems[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool _validateInput() {
    return weightController.text.isNotEmpty &&
        waistController.text.isNotEmpty &&
        chestController.text.isNotEmpty;
  }

  void _clearInputFields() {
    weightController.clear();
    waistController.clear();
    chestController.clear();
  }
}

class MeasurementItemCard extends StatelessWidget {
  final MeasurementItem measurementItem;

  const MeasurementItemCard({Key? key, required this.measurementItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text('Date: ${measurementItem.date.toString().split(' ')[0]}'),
        subtitle: Text(
          'Weight: ${measurementItem.weight}kg | Waist: ${measurementItem.waist}cm | Chest: ${measurementItem.chest}cm',
        ),
      ),
    );
  }
}

class MeasurementItem {
  final DateTime date;
  final double weight;
  final double waist;
  final double chest;

  MeasurementItem({
    required this.date,
    required this.weight,
    required this.waist,
    required this.chest,
  });
}
