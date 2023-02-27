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
                  Get.bottomSheet(
                    Container(
                      child: Wrap(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.light_mode_outlined),
                            title: Text("Light Theme"),
                            onTap: () => {Get.changeTheme(ThemeData.light())},
                          ),
                          ListTile(
                            leading: Icon(Icons.dark_mode_outlined),
                            title: Text("Dark Theme"),
                            onTap: () => {Get.changeTheme(ThemeData.dark())},
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: const Text("Bottom Sheet"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
