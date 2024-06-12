import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indidual_e_commerce_app/core/style/custom_font_style.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      width: 150.h,
      child: Column(
        children: [
          Stack(children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff181818),
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Image.asset("assets/images/img.png"),
            ),
            Padding(
              padding: EdgeInsets.all(10.h),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 25.h,
                  width: 25.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffD6D6D6),
                  ),
                  child: const Icon(
                    Icons.favorite_border_outlined,
                    size: 20,
                  ),
                ),
              ),
            )
          ]),
          SizedBox(
            height: 8.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nike Borden",
                    style: CustomFontStyle.normalText,
                  ),
                  Text(
                    "Shoes",
                    style: CustomFontStyle.smallText,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "\$95",
                    style: CustomFontStyle.normalText,
                  ),
                  const Text(
                    "\$105",
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationThickness:2 ,
                      decorationColor: Colors.white,
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
