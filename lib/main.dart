import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller.dart';
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
          title: const Text("Controller getX"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetX<Controller>(
                  init: Controller(),
                  builder: (controller) {
                    return Text(
                      "This value is: ${controller.count}",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  }),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.find<Controller>().increment();
                },
                child: const Text("Increse number"),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.find<Controller>().decrement();
                },
                child: const Text("Decrease number"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
