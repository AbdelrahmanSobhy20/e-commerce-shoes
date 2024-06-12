import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style/custom_colors.dart';

class CustomAutoSlideProduct extends StatelessWidget {
  const CustomAutoSlideProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return FanCarouselImageSlider.sliderType2(
      autoPlayInterval: const Duration(seconds: 5),
      userCanDrag: true,
      indicatorActiveColor: CustomColors.redColor,
      imagesLink: const [
        "assets/images/img.png",
        "assets/images/img.png",
        "assets/images/img.png"
      ],
      isAssets: true,
      autoPlay: true,
      sliderHeight: 200.h,
      currentItemShadow: const [],
      sliderDuration: const Duration(milliseconds: 300),
      imageRadius: 0,
      slideViewportFraction: 1.2,
    );
  }
}
