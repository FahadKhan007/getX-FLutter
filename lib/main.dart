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
          backgroundColor: Colors.greenAccent,
          title: const Text("Hey this is Fahad learing getX"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.greenAccent),
                ),
                onPressed: () {
                  Get.snackbar(
                    "Hey this is getX",
                    "I am getX learner",
                    colorText: Colors.greenAccent,
                    backgroundColor: Colors.blueGrey,
                    snackPosition: SnackPosition.BOTTOM,
                    dismissDirection: DismissDirection.vertical,
                    duration: const Duration(
                      seconds: 1,
                    ),
                  );
                },
                child: const Text("Hey show getX"),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.greenAccent),
                ),
                onPressed: () {
                  Get.defaultDialog(
                    title: "Hey we are learning getX",
                    titleStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    middleText: "Hey this is middle property",
                    middleTextStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.greenAccent,
                    radius: 70,
                  );
                },
                child: const Text("Hey show dialog box"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
