import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_store/controller/customer_home_controller.dart';
import 'package:multi_store/utilities/color.dart';

class CustomerHome extends StatelessWidget {
  const CustomerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomerHomeControllerImplement>(
        init: CustomerHomeControllerImplement(),
        builder: (controller) {
          return Scaffold(
            body: controller.tabs[controller.selectIndex],
            bottomNavigationBar: BottomNavigationBar(
              elevation: 0,
              currentIndex: controller.selectIndex,
              selectedItemColor: AppColor.primaryColor,
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                controller.changeIndexInBottomNavBar(index);
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'Category'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shop), label: 'Stores'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Profile'),
              ],
            ),
          );
        });
  }
}
