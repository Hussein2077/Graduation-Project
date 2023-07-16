import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_store/utilities/app_routes.dart';
import 'package:multi_store/utilities/app_style.dart';
import 'package:multi_store/utilities/color.dart';
import 'package:multi_store/utilities/routes.dart';
import 'package:multi_store/view/main_screens/customer_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: AppColor.primaryColor),
        appBarTheme: const AppBarTheme(
          color: AppColor.backgroundColor,
        ),
        primaryColor: AppColor.primaryColor,

        indicatorColor: AppColor.primaryColor,
          fontFamily: 'Poppins',


      ),
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: AppRoutes.customerHomeScreen,

    );
  }
}
