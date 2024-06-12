import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indidual_e_commerce_app/features/home/widgets/custom_app_bar.dart';
import 'package:indidual_e_commerce_app/features/home/widgets/custom_grid_view_products.dart';
import 'package:indidual_e_commerce_app/features/home/widgets/custom_list_view_brands.dart';

import '../widgets/custom_image_slide_show.dart';
import '../widgets/custom_row_title.dart';
import '../widgets/custom_slide_show_container.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    ScrollController? controller = ScrollController();
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: SingleChildScrollView(
            controller: controller,
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height,
              child: Column(
                children: [
                  const CustomAppBar(),
                  SizedBox(
                    height: 24.h,
                  ),
                  const CustomImageSlideShow(
                    isLoop: true,
                    children: [
                      CustomSlideShowContainer(),
                      CustomSlideShowContainer(),
                      CustomSlideShowContainer(),
                    ],
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  const CustomListViewBrands(),
                  SizedBox(
                    height: 24.h,
                  ),
                  const CustomRowTitle(),
                  SizedBox(
                    height: 24.h,
                  ),
                  CustomGridViewProducts(
                    controller: controller,
                  ),
                  // const Expanded(child: SizedBox()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
