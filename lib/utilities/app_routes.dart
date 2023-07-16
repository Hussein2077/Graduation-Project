
import 'package:flutter/material.dart';
import 'package:multi_store/utilities/routes.dart';
import 'package:multi_store/view/main_screens/customer_home.dart';
import 'package:multi_store/view/minor_screens/search_screen.dart';
Map<String, Widget Function(BuildContext context)> routes = {
  //auth
  AppRoutes.customerHomeScreen:(context)=>const CustomerHome(),
  AppRoutes.searchScreen:(context)=>const SearchScreen(),


};
