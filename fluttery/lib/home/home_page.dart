import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height / 3.5,
                width: MediaQuery.sizeOf(context).width - 120,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.class_outlined,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              Container(
                height: MediaQuery.sizeOf(context).height / 3.5,
                width: MediaQuery.sizeOf(context).width - 120,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.class_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    Icon(
                      Icons.class_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    Icon(
                      Icons.class_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    Icon(
                      Icons.class_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    Icon(
                      Icons.class_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.sizeOf(context).height / 3.5,
                width: MediaQuery.sizeOf(context).width - 120,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.class_outlined,
                  color: Colors.purpleAccent,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
