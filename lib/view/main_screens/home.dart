import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:multi_store/utilities/app_style.dart';

import '../../utilities/color.dart';
import '../minor_screens/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 9,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text('E-shope',
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
                      onPressed: () {  Get.to(const SearchScreen());},
                      icon: const Icon(
                        Icons.search_rounded,
                        color: AppColor.grey,
                        size: 30,
                      )),

                ],
              )
            ],
            bottom: const TabBar(
                isScrollable: true,
                // indicatorColor: Colors.yellow,
                indicatorWeight: 8,
                tabs: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: RepeatedTap(label: 'Men'),
                  ),
                  RepeatedTap(label: 'Women'),
                  RepeatedTap(label: 'Electronics'),
                  RepeatedTap(label: 'Accessories'),
                  RepeatedTap(label: 'Home & Garden'),
                  RepeatedTap(label: 'Shoes'),
                  RepeatedTap(label: 'Beauty'),
                  RepeatedTap(label: 'Kids'),
                  RepeatedTap(label: 'Bags'),
                ]),
          ),
        ));
  }
}

class RepeatedTap extends StatelessWidget {
  const RepeatedTap({Key? key, required this.label}) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        label,
        style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
      ),
    );
  }
}
