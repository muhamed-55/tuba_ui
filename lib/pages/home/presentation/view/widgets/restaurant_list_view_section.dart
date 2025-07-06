import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/pics_data.dart';
import 'restaurant_listview_item.dart';
import '../../controller/favorite_controller.dart';

class RestaurantListViewSection extends StatelessWidget {
  const RestaurantListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    final favController = Get.put(FavoriteController());
    favController.initItems(restaurantItems.length);

    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: restaurantItems.length,
        itemBuilder: (context, index) {
          return RestaurantListViewItem(
            imagePath: restaurantItems[index]["image"]!,
            title: restaurantItems[index]["title"]!,
            index: index,
          );
        },
      ),
    );
  }
}
