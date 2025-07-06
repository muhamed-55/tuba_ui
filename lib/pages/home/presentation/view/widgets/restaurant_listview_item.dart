import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../widgets/gaps.dart';
import '../../controller/favorite_controller.dart';

class RestaurantListViewItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final int index;

  RestaurantListViewItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.index,
  });

  final favController = Get.find<FavoriteController>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
      //    width: 95.w,
        //  height: 120.h,
          margin: const EdgeInsets.all(8),
          //padding: const EdgeInsets.symmetric(vertical:8, horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.grey,
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 2,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0,vertical: 19.5),
            child: Image.asset(
                  imagePath,
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
          ),

        ),
        // heart icon circle
        Positioned(
          top: 12,
          right: 14,
          child: GestureDetector(
            onTap: () => favController.toggleFavorite(index),
            child: Obx(
                  () => Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color:  Colors.orangeAccent.shade100,
                  shape: BoxShape.circle,
                ),
                child:  Icon(
                  Icons.favorite,
                  color: favController.isFavorite(index)
                      ? Colors.redAccent
                      : Colors.white,
                  size: 12,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 100,
          left:12,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),

      ],
    );
  }
}
