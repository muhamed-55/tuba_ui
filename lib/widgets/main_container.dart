import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/colors.dart';

class MainContainer extends StatelessWidget {
  MainContainer(
      {Key? key,
      this.child,
      this.radius,
      this.color,
      this.height,
      this.shadowColorGrey,
      this.width,
      this.border,
      this.offset1,
      this.padding,
      this.offset2,
      this.withElivation = true})
      : super(key: key);
  Widget? child;
  double? radius;
  double? height;
  double? width;
  Color? color;
  Color? shadowColorGrey;
  Border? border;
  Offset? offset1;
  Offset? offset2;
  EdgeInsetsGeometry? padding;
  final bool withElivation;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width ?? double.infinity,
      padding: padding,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
          color: color ?? ColorCode.white,
          border: border,
          borderRadius: BorderRadius.circular(radius ?? 14.r),
          boxShadow: withElivation
              ? [
                  BoxShadow(
                      color: shadowColorGrey ?? ColorCode.shadowColorGrey,
                      offset: offset1 ?? const Offset(0, 2),
                      spreadRadius: 0,
                      blurRadius: 6),
                ]
              : []),
      child: child,
    );
  }
}
