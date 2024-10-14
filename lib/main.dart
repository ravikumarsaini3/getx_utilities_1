import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_utilities_1/screen/home_screen.dart';
import 'package:getx_utilities_1/screen/screen_one.dart';
import 'package:getx_utilities_1/screen/screen_three.dart';
import 'package:getx_utilities_1/screen/screen_two.dart';

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
      home: const ScreenOne(),
      getPages: [
        GetPage(name: '/screenone', page: () => const ScreenOne(),),
        GetPage(name: '/screentwo', page: () => ScreenTwo(),),
         GetPage(name: '/screenthree', page: () => const ScreenThree(),),
      ],
    );
  }
}
