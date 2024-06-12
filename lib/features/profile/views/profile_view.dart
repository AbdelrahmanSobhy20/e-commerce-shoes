import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indidual_e_commerce_app/core/style/custom_font_style.dart';

import '../widgets/custom_list_view_options.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                Text("Profile" , style: CustomFontStyle.mainTitle,),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  height: 75.h,
                  width: 75.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffE48708),
                  ),
                ),
                Text("Mohamed Ahmed" , style: CustomFontStyle.subTitle,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("mohamed@gmail.com" , style: CustomFontStyle.smallText,),
                    const Icon(Icons.edit ,size: 20, color: Colors.white,),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                const CustomListViewOptions(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
