import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_utilities_1/screen/screen_three.dart';

class ScreenTwo extends StatefulWidget {
  var name;
  ScreenTwo({super.key, this.name});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('screen two' + Get.arguments[0]),
      ),
      body: InkWell(
        onTap: () {
          Get.toNamed('/screenthree');
        },
        child: const Center(
          child: Text(' go to  Screen three'),
        ),
      ),
    );
  }
}
