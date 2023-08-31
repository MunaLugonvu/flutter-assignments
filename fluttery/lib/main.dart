import 'package:flutter/material.dart';
import 'catalogue/car/car_info_widget.dart'; // Import the CarInfoWidget class

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Car> cars = [
    Car(numberPlate: 'ABC123', color: 'Blue', engineNumber: 'E12345'),
    Car(numberPlate: 'DEF456', color: 'Red', engineNumber: 'E67890'),
  ];

   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Car Information'),
        ),
        body: ListView.builder(
          itemCount: cars.length,
          itemBuilder: (context, index) {
            return CarInfoWidget(car: cars[index]);
          },
        ),
      ),
    );
  }
}
