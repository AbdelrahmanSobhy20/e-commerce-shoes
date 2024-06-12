import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/custom_colors.dart';
import '../../../../core/style/custom_font_style.dart';

class CustomContainerOfMessageDelivered extends StatelessWidget {
  const CustomContainerOfMessageDelivered({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.topRight,
      child: Container(
        padding: EdgeInsets.all(8.h),
        height: 50.h,
        width: 200.w,
        decoration: BoxDecoration(
            color: CustomColors.grayColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.zero,
              bottomRight: Radius.circular(15.r),
              topLeft: Radius.circular(10.r),
              topRight: Radius.circular(15.r),
            )),
        child: Center(
            child: Text(
              "Good Morning how are you today?",
              style: CustomFontStyle.normalText,
            )),
      ),
    );
  }
}
