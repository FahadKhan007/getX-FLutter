import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/homepage.dart';
import 'package:getx/productpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hey we are learning getX",

      // named route using getX

      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(
          name: "/",
          page: () => const MyApp(),
        ),
        GetPage(
          name: "/HomePage",
          page: () => const HomePage(),
        ),
        GetPage(
          name: "/ProductPage",
          page: () => const ProductPage(),
        ),
      ],
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: const Text("This is Main Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.redAccent,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                      side: const BorderSide(
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Get.toNamed('/HomePage'); //named route
                },
                child: const Text(
                  "Go to home page",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
