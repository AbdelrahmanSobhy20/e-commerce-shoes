import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style/custom_colors.dart';
import '../../../core/style/custom_font_style.dart';
class CustomProductRateAndPrice extends StatelessWidget {
  const CustomProductRateAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Color(0xffE48708),
            ),
            SizedBox(
              width: 8.w,
            ),
            RichText(
              text: TextSpan(
                  text: "(4.7) ",
                  style: CustomFontStyle.smallText,
                  children: const [
                    TextSpan(
                      text: "22",
                      style: TextStyle(
                          fontSize: 16, color: Colors.grey),
                    )
                  ]),
            ),
          ],
        ),
        Text(
          "\$75",
          style: TextStyle(
            fontSize: 16,
            color: CustomColors.redColor,
          ),
        ),
      ],
    );
  }
}
