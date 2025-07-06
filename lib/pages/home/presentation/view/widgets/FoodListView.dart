import 'package:flutter/material.dart';
import '../../../data/pics_data.dart';
import 'food_listview_item.dart';

class FoodListView extends StatelessWidget {
  const FoodListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foodListItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: FoodListViewItem(
              title: foodListItems[index]["title"]!,
              imageUrl: foodListItems[index]["image"]!,
            ),
          );
        },
      ),
    );
  }
}
