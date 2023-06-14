import 'package:flutter/material.dart';
import 'package:multi_store/widget/fake_search.dart';
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h=MediaQuery.of(context).size.height;
    var w=MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const FakeSearch(),
elevation: 0,
      ),
      body: Stack(

        children: [
          sideNav(h,w),
         catView(h, w),

        ],
      ),
    );

  }
  Widget sideNav( double h,double w ){

    return Positioned(
        bottom: 0,
        left: 0,
        child: Container(
          height: h*.8,
          width: w*.2,
          color: Colors.grey.shade300,
        ));
  } Widget catView( double h,double w ){

    return Positioned(
        bottom: 0,
        right: 0,
        child: Container(
          height: h*.8,
          width: w*.8,
          color: Colors.white,
        ));
  }

}
