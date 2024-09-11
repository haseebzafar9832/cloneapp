import 'package:appcloner/screens/dashboard/view/files/files.dart';
import 'package:appcloner/screens/dashboard/view/tools/tools.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/dashboard_controller.dart';

class DashBoard extends StatelessWidget {
  // const DashBoard({super.key});
  var controller = Get.put(DashBoardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          unselectedIconTheme: IconThemeData(
            color: Colors.black,
          ),
          selectedIconTheme: IconThemeData(color: Colors.blue),
          selectedLabelStyle: TextStyle(color: Colors.blue),
          unselectedLabelStyle: TextStyle(color: Colors.black),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (value) {
            controller.currentIndex.value = value;
          },
          currentIndex: controller.currentIndex.value,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Tools',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_copy),
              label: 'Files',
            ),
          ],
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
        ),
      ),
      body: Obx(() => controller.pages[controller.currentIndex.value]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 64,
        width: 62,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          elevation: 8.0,
          shape: const CircleBorder(),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
