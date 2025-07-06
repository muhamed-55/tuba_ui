import 'package:flutter/material.dart';

class SliderImageItem extends StatelessWidget {
  final String imageUrl;

  const SliderImageItem({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey.shade200,

      ),
      clipBehavior: Clip.antiAlias,

      child: Image.asset(
        imageUrl,
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );
  }
}
