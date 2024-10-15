import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_utilities_1/screen/getxcontroller/switch_controler.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  SwitchControler switchControler = Get.put(SwitchControler());

  @override
  Widget build(BuildContext context) {
    print('object');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch example'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Notifications '),
                  Obx(
                    () => Switch(
                      activeColor: Colors.green,
                      autofocus: true,
                      value: switchControler.notification.value,
                      onChanged: (value) {
                        switchControler.notification.value = value;
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
