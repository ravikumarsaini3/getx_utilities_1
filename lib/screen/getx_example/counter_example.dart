import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_utilities_1/screen/getxcontroller/counter_example_container.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  Countergetx countergetx = Get.put(Countergetx());
  var x = 1;
  @override
  Widget build(BuildContext context) {
    print('object');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Obx(
            () => Container(
              child: Text(
                countergetx.x.toString(),
                style: const TextStyle(color: Colors.red, fontSize: 30),
              ),
            ),
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countergetx.increment();
          print(' floating action button presed');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
