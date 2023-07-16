import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:multi_store/controller/category_screen_controller.dart';
import 'package:multi_store/view/minor_screens/search_screen.dart';

import '../../utilities/app_style.dart';
import '../../utilities/color.dart';
import '../categories/men_category.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return GetBuilder<CategoryScreenControllerImplement>(
        init: CategoryScreenControllerImplement(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              title: Text('E-Shop',
                  style: h2Style.copyWith(color: AppColor.primaryColor)),
              actions: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart_outlined,
                          color: AppColor.grey,
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {
                          Get.to(const SearchScreen());
                        },
                        icon: const Icon(
                          Icons.search_rounded,
                          color: AppColor.grey,
                          size: 30,
                        )),
                  ],
                )
              ],
            ),
            body: Stack(
              children: [
                sideNav(h, w),
                catView(h, w),
              ],
            ),
          );
        });
  }

  Widget sideNav(double h, double w) {
    Get.put(CategoryScreenControllerImplement());
    return GetBuilder<CategoryScreenControllerImplement>(
        init: CategoryScreenControllerImplement(),
        builder: (controller) {
          return Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: h * .8,
                width: w * .2,
                child: ListView.builder(
                    itemCount: items.length,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          controller.page(index);
                        },
                        child: Container(
                            color: items[index].isSelected
                                ? Colors.white
                                : Colors.grey.shade300,
                            height: 100,
                            child: Center(child: Text(items[index].label))),
                      );
                    }),
              ));
        });
  }

  Widget catView(double h, double w) {
    return GetBuilder<CategoryScreenControllerImplement>(
        init: CategoryScreenControllerImplement(),
        builder: (controller) {
          return Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: h * .8,
                width: w * .8,
                color: Colors.white,
                child: PageView(
                  controller: controller.pageController,
                  onPageChanged: (index) {
                    controller.pageChanged(index);
                  },
                  scrollDirection: Axis.vertical,
                  children: const [
                    MenCategory(),
                    Center(
                      child: Text('women category'),
                    ),
                    Center(
                      child: Text('electronics category'),
                    ),
                    Center(
                      child: Text('accessories category'),
                    ),
                    Center(
                      child: Text('shoes category'),
                    ),
                    Center(
                      child: Text('home & garden category'),
                    ),
                    Center(
                      child: Text('beauty category'),
                    ),
                    Center(
                      child: Text('kids category'),
                    ),
                    Center(
                      child: Text('bags category'),
                    ),
                  ],
                ),
              ));
        });
  }
}

class ItemData {
  String label;
  bool isSelected;

  ItemData({
    required this.label,
    this.isSelected = false,
  });
}

List<ItemData> items = [
  ItemData(label: 'men'),
  ItemData(label: 'women'),
  ItemData(label: 'electronics'),
  ItemData(label: 'accessories'),
  ItemData(label: 'shoes'),
  ItemData(label: 'home & garden'),
  ItemData(label: 'beauty'),
  ItemData(label: 'kids'),
  ItemData(label: 'bags'),
];
