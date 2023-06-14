import 'package:flutter/material.dart';

import '../minor_screens/search_screen.dart';
import '../widget/fake_search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 9,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: const FakeSearch(),
            bottom: const TabBar(
                isScrollable: true,
                indicatorColor: Colors.yellow,
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

