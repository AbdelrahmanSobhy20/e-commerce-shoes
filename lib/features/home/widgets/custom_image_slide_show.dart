import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImageSlideShow extends StatelessWidget {
  const CustomImageSlideShow({super.key, required this.children, required this.isLoop});
  final List<Widget> children;
  final bool isLoop;

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
        indicatorColor: const Color(0xffff0000),
        indicatorBottomPadding: 11.h,
        indicatorRadius: 4.r,
        onPageChanged: (value) {
          debugPrint('Page changed: $value');
        },
        autoPlayInterval: 3000,
        isLoop: isLoop,
        children: children);
  }
}
