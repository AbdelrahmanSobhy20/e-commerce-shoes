import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewBrands extends StatelessWidget {
  const CustomListViewBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 8,
        itemBuilder: (context , index){
          return  Padding(
            padding: EdgeInsets.only(left:  8.0.w),
            child: Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(15.r),
                color: Colors.white,
              ),
              child: Image.asset("assets/images/adidas_logo.png" , fit: BoxFit.scaleDown,),
            ),
          );
        },
      ),
    );
  }
}
