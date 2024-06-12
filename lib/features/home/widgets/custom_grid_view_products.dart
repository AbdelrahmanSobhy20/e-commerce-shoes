import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indidual_e_commerce_app/features/product/views/products_details_view.dart';

import 'custom_product_card.dart';

class CustomGridViewProducts extends StatelessWidget {
  const CustomGridViewProducts({super.key, required this.controller});
  final ScrollController? controller ;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        scrollDirection: Axis.vertical,
          controller: controller,
          itemCount: 4,
          shrinkWrap: true,
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 16.w,
              mainAxisSpacing: 16.h,
              mainAxisExtent: 200.h,
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return InkWell(
                onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ProductsDetailsView()));},
                child: const CustomProductCard());
          }),
    );
  }
}
