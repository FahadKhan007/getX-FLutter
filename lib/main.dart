import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Learn getX",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hey this is Fahad learing getX"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.snackbar("Hey this is getX", "I am getX learner");
                },
                child: const Text("Hey show getX"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
