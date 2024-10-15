import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen one '),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: Get.height * 0.7,
            width: Get.width * 0.7,
            child: Text('name'.tr),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(
                '/screentwo',
              );
            },
            child: const Center(
              child: Text('  go to Screen two '),
            ),
          ),
        ],
      ),
    );
  }
}
