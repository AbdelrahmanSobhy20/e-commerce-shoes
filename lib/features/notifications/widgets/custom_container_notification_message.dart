import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style/custom_colors.dart';
import '../../../core/style/custom_font_style.dart';

class CustomContainerNotificationMessage extends StatelessWidget {
  const CustomContainerNotificationMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Container(
          padding: EdgeInsets.only(left: 16.w),
          height: 42.h,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: CustomColors.grayColor,
          ),
          child: Row(
            children: [
              Icon(Icons.notifications_none , size: 35.w, color: Colors.white,),
              SizedBox(
                width: 16.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Special Offer For Shoes" , style: CustomFontStyle.normalText,),
                  Text("Today 10:30 Am", style: CustomFontStyle.smallText,),
                ],
              )
            ],
          )),
    );
  }
}
