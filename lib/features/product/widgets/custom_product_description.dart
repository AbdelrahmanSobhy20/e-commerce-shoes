import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style/custom_colors.dart';
import '../../../core/style/custom_font_style.dart';

class CustomProductDescription extends StatelessWidget {
  const CustomProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Adidas",
          style: CustomFontStyle.mainTitle,
        ),
        SizedBox(
          height: 8.h,
        ),
        RichText(
          text: TextSpan(
              text:
              "Adidas Shoes Are Iconic Footwear Known For Their Fusion Of Style, Comfort, And Performance. Founded In 1949 By German Shoemaker Adi Dassierk, Adidas Has Since Become One Of The Worldl's Leading Sportswear Brands, Admired For Its innovative Design And Commitment To Qualitym.",
              style: const TextStyle(fontSize: 16, color: Colors.grey),
              children: [
                TextSpan(
                    text: "Read More",
                    style: TextStyle(
                        fontSize: 16, color: CustomColors.redColor))
              ]),
        ),
        SizedBox(
          height: 16.h,
        ),
      ],
    );
  }
}
