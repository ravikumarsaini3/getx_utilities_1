import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_utilities_1/screen/getxcontroller/opacity_controller.dart';

class OpecityExample extends StatefulWidget {
  const OpecityExample({super.key});

  @override
  State<OpecityExample> createState() => _OpecityExampleState();
}

class _OpecityExampleState extends State<OpecityExample> {
  OpacityController opacitycontroller = Get.put(OpacityController());
  // var opacity = 0.4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opecity example'),
      ),
      body: Column(
        children: [
          Center(
              child: Obx(
            () => Container(
              height: 40,
              color: Colors.red.withOpacity(opacitycontroller.opacity.value),
            ),
          )),
          const SizedBox(
            height: 20,
          ),
          Obx(
            () => Slider(
              inactiveColor: Colors.white,
              autofocus: true,
              secondaryActiveColor: Colors.blue,
              thumbColor: const Color.fromARGB(255, 59, 57, 33),
              activeColor: Colors.green,
              max: 1,
              min: 0.1,
              value: opacitycontroller.opacity.value,
              onChanged: (value) {
                opacitycontroller.changeopacity(value);
              },
            ),
          )
        ],
      ),
    );
  }
}
