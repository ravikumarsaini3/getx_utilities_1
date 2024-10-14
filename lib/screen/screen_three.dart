import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen two'),
      ),
      body: InkWell(
        onDoubleTap: () {
          Get.back();
          Get.back();
        },
        onTap: () {
          Get.back();
        },
        child: const Center(
          child: Text('go back screen two//double tap screen one '),
        ),
      ),
    );
  }
}
