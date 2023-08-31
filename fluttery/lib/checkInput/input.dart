import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({super.key});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  String input = '';
  String result = '';

  bool isPrime(int number) {
    if (number <= 1) return false;

    if (number == 2) return true;

    if (number % 2 == 0) return false;

    for (int i = 3; i * i <= number; i += 2) {
      if (number % i == 0) return false;
    }

    return true; // If none of the conditions match, the number is prime
  }

  String analyzeInput(String input) {
    if (int.tryParse(input) != null) {
      int num = int.parse(input);
      if (isPrime(num)) {
        return 'Prime Number';
      } else if (num.isOdd) {
        return 'Odd Number';
      } else {
        return 'Even Number';
      }
    } else if (input.toLowerCase() == 'true' ||
        input.toLowerCase() == 'false') {
      return 'Boolean';
    } else {
      return 'String';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WHAT IS MY DATA TYPE?'),
        ),
        body: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 3.5,
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        result = analyzeInput(value);
                      });
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter input whose datatype you wanna know...',
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Input Type: $result',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
