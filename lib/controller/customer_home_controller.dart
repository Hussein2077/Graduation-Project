import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../view/main_screens/category_screen.dart';
import '../view/main_screens/home.dart';
abstract class CustomerHomeController extends GetxController{
  changeIndexInBottomNavBar(int index);
}
class CustomerHomeControllerImplement extends CustomerHomeController{
  int selectIndex = 0;
  final List<Widget> tabs = const [
    HomeScreen(),
    CategoryScreen(),
    Center(
      child: Text('stores'),
    ),

    Center(
      child: Text('profile'),
    ),
  ];
  @override
  changeIndexInBottomNavBar(int index) {

    selectIndex = index;

update();
  }

}