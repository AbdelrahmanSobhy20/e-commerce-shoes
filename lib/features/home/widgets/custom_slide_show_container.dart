import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indidual_e_commerce_app/core/style/custom_colors.dart';
import 'package:indidual_e_commerce_app/features/product/views/products_details_view.dart';

class CustomSlideShowContainer extends StatelessWidget {
  const CustomSlideShowContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.w),
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: const Color(0xffeeeeee),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 150.h,
              width: MediaQuery.sizeOf(context).width/2.5,
              decoration: const BoxDecoration(
                color: Color(0xff181818),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "Get Discount Up To ",
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                            children: [
                          TextSpan(
                            text: "30% Off",
                            style: TextStyle(
                                fontSize: 22, color: CustomColors.redColor),
                          )
                        ])),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ProductsDetailsView()));
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(top: 8.h),
                          height: 25.h,
                          width: 65.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(
                              color: CustomColors.redColor,
                            )
                          ),
                          child: const Center(
                            child: Text("Buy Now",style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Image.asset(
              'assets/images/img.png',
              fit: BoxFit.cover,
              width: MediaQuery.sizeOf(context).width/2.5,
            ),
          ],
        ),
      ),
    );
  }
}
