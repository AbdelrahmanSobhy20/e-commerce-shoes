import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indidual_e_commerce_app/core/google_nav_bar.dart';

import '../widgets/bottom_actions.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_or_slider.dart';
import '../widgets/custom_text_button.dart';
import '../widgets/screen_title.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  List<String> codeList = ["2", "0", "5", "8"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const ScreenTitle(title: "Verification"),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.black,
            size: 25.h,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    "assets/images/verification.png",
                    height: 250.h,
                  ),
                  const Center(
                    child: Text(
                      "Enter Your Verification Code",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffA3A3A3),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16.h),
                    width: MediaQuery.sizeOf(context).width,
                    height: 40.h,
                    child: Center(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: codeList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: index == 3
                                  ? EdgeInsets.zero
                                  : EdgeInsets.only(right: 24.h),
                              child: Container(
                                width: 40.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: const Color(0xffD9D9D9),
                                ),
                                child: Center(
                                    child: Text(
                                  codeList[index],
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            );
                          }),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "if you don't receive a code.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffA3A3A3),
                      ),
                    ),
                  ),
                  CustomTextButton(
                    sentence: 'Resend?',
                    onTap: () {},
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 24.h, top: 8.h),
                    child: CustomButton(
                      label: 'Next',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => const GoogleNavBar()),
                              (route) => false);
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: const CustomOrSlider(),
                  ),
                  const BottomActions(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
