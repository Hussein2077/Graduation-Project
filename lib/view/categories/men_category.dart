import 'package:flutter/material.dart';
import 'package:multi_store/utilities/categ_list.dart';


class MenCategory extends StatelessWidget {
  const MenCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(30.0),
          child: Text(
            'Men',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .68,
          child: GridView.count(
            physics: const BouncingScrollPhysics(),
            crossAxisCount: 3,
            mainAxisSpacing: 70,
            crossAxisSpacing: 15,
            children: List.generate(men.length, (index) {
              return Column(
                children: [
                  SizedBox(
                    width: 70,
                    height: 70,
                    child:
                        Image(image: AssetImage('images/men/men$index.jpg')),
                  ),Text(men[index]),
                ],
              );
            }),
          ),
        ),
      ],
    );
  }
}
