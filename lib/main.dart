import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/customclass.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var learner = CustomClass();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "We are learning getX obx with custom class",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: const Text(
            "State Management obx with custom class",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
        ),
        body: Container(
          color: Color.fromARGB(255, 82, 74, 74),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    "Name ${learner.name.value}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white70),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.redAccent),
                  ),
                  onPressed: () {
                    learner.name.value = learner.name.value.toUpperCase();
                  },
                  child: const Text("Make it to UPPER CASE"),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blueAccent),
                  ),
                  onPressed: () {
                    learner.name.value = learner.name.value.toLowerCase();
                  },
                  child: const Text("Make it to lower case"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
