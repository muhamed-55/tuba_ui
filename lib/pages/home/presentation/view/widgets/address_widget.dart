import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tuba_ui/consts/text_styles.dart';
import 'package:tuba_ui/widgets/gaps.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gaps.vGap20,
                Row(
                  children: [
                    Icon(Icons.location_on_outlined, size: 24.sp),
                    Gaps.vGap5,
                    Text(
                      'Home',
                      style: TextStyles.textSmall.copyWith(fontSize: 14.sp),
                    ),
                  ],
                ),
                Gaps.vGap8,
                Row(
                  children: [
                    Text(
                      '2343 Bank St, Riyad, Saudi...',
                      style: TextStyles.textSmall.copyWith(fontSize: 12.sp),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Icon(Icons.keyboard_arrow_down, size: 20.sp),
                  ],
                ),
              ],
            ),
          ),
        ),
        // notifications icon
        Padding(
          padding: EdgeInsets.only(right: 16.w, top: 30.h),
          child: Icon(
            Icons.notifications,
            size: 25.sp,
          ),
        ),
      ],
    );
  }
}
