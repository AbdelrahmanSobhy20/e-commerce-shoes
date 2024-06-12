import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style/custom_colors.dart';
import '../../../core/style/custom_font_style.dart';

class CustomRowOptions extends StatelessWidget {
  const CustomRowOptions({super.key, required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 35.h,
          width: 35.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: CustomColors.grayColor,
          ),
          //Icons.file_copy
          child: Icon(icon ,color: const Color(0xffA3A3A3),),
        ),
        Container(
          height: 35.h,
          width: MediaQuery.sizeOf(context).width-70.h,
          decoration: BoxDecoration(
            color: CustomColors.grayColor,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: Align(alignment: Alignment.centerLeft,child: Text(label , style: CustomFontStyle.subTitle,)),
          ),
        ),
      ],
    );
  }
}
