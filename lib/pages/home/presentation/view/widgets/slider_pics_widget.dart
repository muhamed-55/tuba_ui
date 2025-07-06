import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tuba_ui/pages/home/data/pics_data.dart';

import 'ImageItem.dart';

class SliderPicsWidget extends StatelessWidget {
  const SliderPicsWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 180,
          enlargeCenterPage: true,
          autoPlay: false,
          viewportFraction: 0.98,
        ),
        items: chefImages.map((url) {
          return SliderImageItem(imageUrl: url);
        }).toList(),
      ),
    );
  }
}
