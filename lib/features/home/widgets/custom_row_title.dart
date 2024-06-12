import 'package:flutter/material.dart';

import '../../../core/style/custom_font_style.dart';

class CustomRowTitle extends StatelessWidget {
  const CustomRowTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          "Top Brands",
          style: CustomFontStyle.mainTitle,
        ),
        InkWell(
          onTap: (){},
          child: Text(
            "See More",
            style: CustomFontStyle.subTitle,
          ),
        ),
      ],
    );
  }
}
