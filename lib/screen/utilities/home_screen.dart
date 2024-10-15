import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Tutorials'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.snackbar('Title', 'Hey, I am a snackbar',
                  backgroundColor: Colors.green);
            },
            child: const Text('Show Snackbar'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.defaultDialog(
                title: 'Dialog Alert',
                middleText: 'Are you sure?',
                confirm: ElevatedButton(
                  onPressed: () {
                    Get.back(); // Close the dialog
                  },
                  child: const Text('OK'),
                ),
                cancel: ElevatedButton(
                  onPressed: () {
                    Get.back(); // Close the dialog
                  },
                  child: const Text('Cancel'),
                ),
              );
            },
            child: const Text('Show Dialog'),
          ),
          ListTile(
            onTap: () {
              Get.bottomSheet(
                Container(
                  color: Colors.blue,
                  height: Get.height * 1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // Use min size
                    children: [
                      Card(
                        elevation: 10,
                        child: ListTile(
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                            Get.back(); // Close the bottom sheet
                          },
                          title: const Text('Dark Mode'),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        child: ListTile(
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                            Get.back(); // Close the bottom sheet
                          },
                          title: const Text('Light Mode'),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            title: const Text('Show Bottom Sheet'),
          ),
        ],
      ),
    );
  }
}
