import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indidual_e_commerce_app/features/profile/widgets/custom_row_options.dart';

class CustomListViewOptions extends StatelessWidget {
  const CustomListViewOptions({super.key});

  @override
  Widget build(BuildContext context) {
    List <IconData> iconList = [
      Icons.file_copy,
      Icons.person,
      Icons.location_on_rounded,
      Icons.payment_rounded,
      Icons.info_rounded,
      Icons.help,
      Icons.logout_outlined
    ];
    List<String> labels = ["Order","Personal Details","Delivery Address","Payment Method","About","Help","Log Out",];
    return ListView.builder(
      itemCount: iconList.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
      return Padding(
        padding: EdgeInsets.only(bottom: 16.0.h),
        child: CustomRowOptions(icon: iconList[index], label: labels[index]),
      );
    },);
  }
}
