import 'package:flutter/material.dart';

import '../widget/appbar_widgets.dart';

class SubcategoryProducts extends StatelessWidget {
  final String mainCategoryName;
  final String subCategoryName;
  const SubcategoryProducts(
      {Key? key, required this.subCategoryName, required this.mainCategoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppbarBackButton(),
        elevation: 0,
        backgroundColor: Colors.white,
        title: AppbarTitle(title: subCategoryName),
      ),
      body: Center(
        child: Text(mainCategoryName),
      ),
    );
  }
}
