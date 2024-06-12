import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indidual_e_commerce_app/core/style/custom_font_style.dart';
import 'package:indidual_e_commerce_app/features/product/widgets/custom_auto_slide_product.dart';
import 'package:indidual_e_commerce_app/features/product/widgets/custom_cart_btn.dart';
import '../widgets/custom_list_view_product_size.dart';
import '../widgets/custom_product_description.dart';
import '../widgets/custom_product_rate_and_price.dart';
import 'address_view.dart';

class ProductsDetailsView extends StatefulWidget {
  const ProductsDetailsView({super.key});

  @override
  State<ProductsDetailsView> createState() => _ProductsDetailsViewState();
}

class _ProductsDetailsViewState extends State<ProductsDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.white,
            size: 25.h,
          ),
        ),
        title: Text(
          "Brands",
          style: CustomFontStyle.mainTitle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAutoSlideProduct(),
            Padding(
              padding: EdgeInsets.all(15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const CustomProductDescription(),
                  const CustomProductRateAndPrice(),
                  SizedBox(
                    height: 16.h,
                  ),
                  const CustomListViewProductSize(),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomCartBtn(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const AddressView()));
                    }, label: 'Add to Cart',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
