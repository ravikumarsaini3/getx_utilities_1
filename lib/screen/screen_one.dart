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
      body: InkWell(
        onTap: () {
          Get.toNamed('/screentwo', arguments: ['Ravi', 'saini']);
        },
        child: const Center(
          child: Text('  go to Screen two '),
        ),
      ),
    );
  }
}
