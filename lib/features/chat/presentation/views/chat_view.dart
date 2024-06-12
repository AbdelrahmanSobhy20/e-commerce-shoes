import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indidual_e_commerce_app/core/style/custom_font_style.dart';

import '../widgets/custom_container_of_message_delivered.dart';
import '../widgets/custom_container_of_message_sent.dart';
import '../widgets/custom_row_send_message.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text("Chats", style: CustomFontStyle.mainTitle)),
              SizedBox(
                height: 35.h,
              ),
              const CustomContainerOfMessageSent(),
              SizedBox(height: 32.h,),
              const CustomContainerOfMessageDelivered(),
              SizedBox(height: 32.h,),
              const CustomContainerOfMessageSent(),
              SizedBox(height: 32.h,),
              const CustomContainerOfMessageDelivered(),
              const Expanded(child: SizedBox()),
              const CustomRowSendMessage(),
            ],
          ),
        ),
      ),
    );
  }
}
