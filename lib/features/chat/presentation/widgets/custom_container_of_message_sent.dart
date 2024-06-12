import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/custom_font_style.dart';

class CustomContainerOfMessageSent extends StatelessWidget {
  const CustomContainerOfMessageSent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(8.h),
      height: 50.h,
      width: 200.w,
      decoration: BoxDecoration(
          color: const Color(0xff10263E),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15.r),
            bottomRight: Radius.zero,
            topLeft: Radius.circular(15.r),
            topRight: Radius.circular(10.r),
          )),
      child: Center(
          child: Text(
            "Good Morning how are you today?",
            style: CustomFontStyle.normalText,
          )),
    );
  }
}
