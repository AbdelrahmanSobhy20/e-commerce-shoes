import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indidual_e_commerce_app/features/notifications/views/notifications.view.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 35.h,
          width: MediaQuery.sizeOf(context).width-55.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              color: const Color(0xff181818),
              border: Border.all(
                color: const Color(0xffeeeeee),
              )),
          child: Row(
            children: [
              SizedBox(
                width: 8.w,
              ),
              Icon(
                Icons.search,
                color: Colors.grey[700],
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                "Search Product...",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
        Container(
          height: 35.h,
          width: 35.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              color: const Color(0xff181818),
              border: Border.all(
                color: const Color(0xffeeeeee),
              )),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const NotificationsView()));
            },
            icon: const Icon(Icons.notifications),
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
