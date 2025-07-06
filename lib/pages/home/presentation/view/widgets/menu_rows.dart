import 'package:flutter/material.dart';
import 'package:tuba_ui/generated/assets.dart';

import '../../../../../widgets/gaps.dart';
import 'box_item.dart';
class MenuRows extends StatelessWidget {
  const MenuRows({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        children: [
          Row(
            children: [
              BoxItem(imagePath: 'assets/burger_sandwich.jpg', title: 'Burger',),
              BoxItem(imagePath: 'assets/burger_sandwich.jpg', title: 'Burger',),
              BoxItem(imagePath: 'assets/burger_sandwich.jpg', title: 'Burger',),


            ],
          ),
          Gaps.vGap12,
          Row(
            children: [
              BoxItem(imagePath: 'assets/burger_sandwich.jpg', title: 'Burger',),
              BoxItem(imagePath: 'assets/burger_sandwich.jpg', title: 'Burger',),
              BoxItem(imagePath: 'assets/burger_sandwich.jpg', title: 'Burger',),

            ],
          ),

        ],
      ),
    );
  }
}
