import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRowSendMessage extends StatelessWidget {
  const CustomRowSendMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 35.h,
          width: 35.h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r)),
          child: const Icon(Icons.attach_file_rounded),
        ),
        Container(
          height: 35.h,
          width: MediaQuery.sizeOf(context).width-70.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(
                color: Colors.white,
                width: 2.h,
              )),
        )
      ],
    );
  }
}
