import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_utilities_1/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system, // Change this as neede
      home: const HomeScreen(),
    );
  }
}
