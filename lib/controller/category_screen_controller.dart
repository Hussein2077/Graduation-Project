import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../view/main_screens/category_screen.dart';
import '../view/main_screens/home.dart';

abstract class CategoryScreenController extends GetxController {
  page(int index);
  pageChanged(int index);
}

class CategoryScreenControllerImplement extends CategoryScreenController {
  final PageController pageController = PageController();

  @override
  void onInit() {
    for (ItemData i in items) {
      i.isSelected = false;
      update();
    }

    items[0].isSelected = true;
    update();

    super.onInit();
  }

  @override
  page(int index) {
    pageController.animateToPage(index,
        duration: const Duration(
            milliseconds: 500
        ), curve: Curves.decelerate);
    update();
    throw UnimplementedError();
  }

  @override
  pageChanged(int index) {
    for (ItemData i in items) {
      i.isSelected = false;
    }

      items[index].isSelected = true;
  update();

    throw UnimplementedError();
  }
}
