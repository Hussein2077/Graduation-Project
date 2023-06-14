import 'package:flutter/material.dart';

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
            backgroundColor: Colors.white,
            title: const SearchBar(),
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

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SearchScreen()),
        );
      },
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.yellow, width: 2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(
                Icons.search,
                color: Colors.grey.shade500,
              ),
            ),
            Text(
              'What are you looking for?',
              style: TextStyle(color: Colors.grey.shade500, fontSize: 20),
            ),
            Container(
              width: 80,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  'Search',
                  style: TextStyle(color: Colors.grey.shade500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
