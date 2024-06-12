import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewProductSize extends StatelessWidget {
  const CustomListViewProductSize({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> productSize = [
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
    ];
    return SizedBox(
      height: 35.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: productSize.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Container(
                height: 35.h,
                width: 35.h,
                decoration: BoxDecoration(
                  color: index ==3? const Color(0xffFF0201): null,
                  borderRadius: BorderRadius.circular(7.r),
                  border: Border.all(color: const Color(0xffFF0201)),
                ),
                child: Center(child:Text(productSize[index] , style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),),
              ),
            );
          }),
    );
  }
}
