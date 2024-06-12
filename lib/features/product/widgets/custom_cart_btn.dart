import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style/custom_font_style.dart';
class CustomCartBtn extends StatelessWidget {
  const CustomCartBtn({super.key, required this.onPressed, required this.label});
  final void Function()? onPressed;
  final String label ;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffFF0201),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r)
        )
      ),
      child: Text(
        label,
        style: CustomFontStyle.subTitle,
      ),
    );
  }
}
