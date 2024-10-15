import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ScreenTwo extends StatefulWidget {
  const ScreenTwo({
    super.key,
  });

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('screen two'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('english'),
          Text('name'.tr),
          ElevatedButton(
              onPressed: () {
                Get.updateLocale(const Locale('en', 'us'));
              },
              child: const Text('change language ')),
          Row(
            children: [
              Column(
                children: [
                  const Text('urdu'),
                  Text('name'.tr),
                  ElevatedButton(
                      onPressed: () {
                        Get.updateLocale(const Locale('ur', 'pk'));
                      },
                      child: const Text('change language ')),
                ],
              )
            ],
          ),
          InkWell(
            onTap: () {
              Get.toNamed('/screenthree');
            },
            child: const Center(
              child: Text(' Go to  Screen three'),
            ),
          ),
        ],
      ),
    );
  }
}
