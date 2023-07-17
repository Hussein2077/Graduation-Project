import 'package:flutter/material.dart';

import '../../utilities/categ_list.dart';
import '../widget/categ_widgets.dart';
class Category extends StatelessWidget {
  const Category({Key? key, required this.name, required this.list}) : super(key: key);
final String name;
final List<String> list;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: size.height * 0.8,
              width: size.width * 0.75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   CategHeaderLabel(
                    headerLabel: name,
                  ),
                  SizedBox(
                    height: size.height * 0.68,
                    child: GridView.count(
                      mainAxisSpacing: 70,
                      crossAxisCount: 3,
                      children: List.generate(list.length, (index) {
                        return SubcategModel(
                          mainCategName: name.toUpperCase(),
                          subCategName: list[index],
                          assetName: 'images/$name/$name$index.jpg',
                          assetLabel: list[index],
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: SliderBar(
                size: size,
                sliderLabel: name,
              ))
        ],
      ),
    );
  }
}
