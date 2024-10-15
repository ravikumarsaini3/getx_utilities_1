import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_utilities_1/screen/counter/counter_example.dart';
import 'package:getx_utilities_1/screen/utilities/screen_one.dart';
import 'package:getx_utilities_1/screen/utilities/screen_three.dart';
import 'package:getx_utilities_1/screen/utilities/screen_two.dart';
import 'package:getx_utilities_1/screen/utilities/translation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // locale: const Locale('ur', 'pk'),
      // fallbackLocale: const Locale('ur', 'pk'),
      // translations: Translation(),

      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system, // Change this as neede
      home: const CounterExample(),
      getPages: [
        GetPage(
          name: '/screenone',
          page: () => const ScreenOne(),
        ),
        GetPage(
          name: '/screentwo',
          page: () => ScreenTwo(),
        ),
        GetPage(
          name: '/screenthree',
          page: () => const ScreenThree(),
        ),
      ],
    );
  }
}
