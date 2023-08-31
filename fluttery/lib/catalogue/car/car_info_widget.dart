// car_info_widget.dart
import 'package:flutter/material.dart';

class Car {
  final String numberPlate;
  final String color;
  final String engineNumber;
  final String? carImageUrl;

  Car(
      {required this.numberPlate,
      required this.color,
      required this.engineNumber,
      this.carImageUrl});
}

class CarInfoWidget extends StatelessWidget {
  final Car car;

  const CarInfoWidget({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            if (car.carImageUrl != null)
              Image.asset(
                car.carImageUrl!,
                height: 100,
              ),
            Text('Number Plate: ${car.numberPlate}'),
            Text('Color: ${car.color}'),
            Text('Engine Number: ${car.engineNumber}'),
          ],
        ),
      ),
    );
  }
}
