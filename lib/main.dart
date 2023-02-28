import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'IdController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  IdController controller = Get.put(IdController()); //instance

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "I am learning Unique id in getX",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Unique id"),
        ),
        body: Container(
          color: Colors.black54,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GetBuilder<IdController>(
                    id: "unique Id",
                    builder: (controller) {
                      return Text(
                        "This numbering works: ${controller.idCount}",
                        style: const TextStyle(
                          fontSize: 22,
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    }),
                GetBuilder<IdController>(builder: (controller) {
                  return Text(
                    "This numbering doesn't work: ${controller.idCount}",
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                }),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () => controller.increasing(),
                  child: const Text(
                    "Let's increase number",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () => controller.decreasing(),
                  child: const Text(
                    "Let's decrease number",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
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
