import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indidual_e_commerce_app/core/style/custom_colors.dart';

import '../../../core/style/custom_font_style.dart';
import '../widgets/custom_container_notification_message.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({super.key});

  @override
  State<NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
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
          "Notification",
          style: CustomFontStyle.mainTitle,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    "Last 30 Days",
                    style: CustomFontStyle.normalText,
                  ),
                  Text(
                    "All Mark As Read",
                    style: TextStyle(fontSize: 14, color: CustomColors.redColor),
                  ),
                ],
              ),
              SizedBox(
                height: 36.h,
              ),
              const CustomContainerNotificationMessage(),
              Text(
                "Yesterday",
                style: CustomFontStyle.normalText,
              ),
              SizedBox(
                height: 8.h,
              ),
              const CustomContainerNotificationMessage(),
              const CustomContainerNotificationMessage(),
              Text(
                "Yesterday",
                style: CustomFontStyle.normalText,
              ),
              SizedBox(
                height: 8.h,
              ),
              const CustomContainerNotificationMessage(),
              const CustomContainerNotificationMessage(),
              Center(child: Text("See More"  , style: CustomFontStyle.smallText,),)
            ],
          ),
        ),
      ),
    );
  }
}
