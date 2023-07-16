import 'package:flutter/material.dart';

import '../minor_screens/search_screen.dart';
class FakeSearch extends StatelessWidget {
  const FakeSearch({Key? key}) : super(key: key);

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
