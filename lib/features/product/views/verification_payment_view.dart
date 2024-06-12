import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indidual_e_commerce_app/core/google_nav_bar.dart';
import 'package:indidual_e_commerce_app/features/product/widgets/custom_cart_btn.dart';

class VerificationPaymentView extends StatefulWidget {
  const VerificationPaymentView({super.key});

  @override
  State<VerificationPaymentView> createState() =>
      _VerificationPaymentViewState();
}

class _VerificationPaymentViewState extends State<VerificationPaymentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(16.h),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset("assets/images/check_mark.png"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 250.w,
                      child: const Text(
                        "Your Order has been successful",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    SizedBox(
                      width: 210.w,
                      child: const Text(
                        "Your items has been placed and is on its way to being processed",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xffD6D6D6),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
               // const Expanded(child: SizedBox()),
                Padding(
                  padding: EdgeInsets.only(top: 32.h),
                  child: CustomCartBtn(
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (context) => const GoogleNavBar()),
                            (route) => false);
                      },
                      label: "Done"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
