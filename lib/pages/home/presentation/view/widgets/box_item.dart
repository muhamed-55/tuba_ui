import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../widgets/gaps.dart';

class BoxItem extends StatelessWidget {
  final String imagePath;
  final String title;

  const BoxItem({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
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
          Positioned(
            top: 65,
            left:40,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 14.sp,
                height:1.50
              ),
              textAlign: TextAlign.center,
            ),
          ),

        ],
      ),
    );
  }
}
