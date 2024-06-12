import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOrSlider extends StatelessWidget {
  const CustomOrSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 2.h,
          width: MediaQuery.sizeOf(context).width * 5 / 12,
          color: const Color(0xffA3A3A3),
        ),
        const Text(
          "OR",
          style: TextStyle(fontSize: 14, color: Color(0xffA3A3A3)),
        ),
        Container(
          height: 2.h,
          width: MediaQuery.sizeOf(context).width * 5 / 12,
          color: const Color(0xffA3A3A3),
        ),
      ],
    );
  }
}
