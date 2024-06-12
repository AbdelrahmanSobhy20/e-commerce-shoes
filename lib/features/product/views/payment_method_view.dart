import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indidual_e_commerce_app/features/home/widgets/custom_image_slide_show.dart';
import 'package:indidual_e_commerce_app/features/product/views/verification_payment_view.dart';
import 'package:indidual_e_commerce_app/features/product/widgets/custom_cart_btn.dart';

import '../../../core/style/custom_font_style.dart';

class PaymentMethodView extends StatefulWidget {
  const PaymentMethodView({super.key});

  @override
  State<PaymentMethodView> createState() => _PaymentMethodViewState();
}

class _PaymentMethodViewState extends State<PaymentMethodView> {
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
          "Payment Method",
          style: CustomFontStyle.mainTitle,
        ),
      ),
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 180.h,
                color: const Color(0xff181818),
                child: CustomImageSlideShow(
                  isLoop: false,
                  children: [
                    Image.asset("assets/images/credit_card.webp"),
                    Image.asset("assets/images/credit_card.webp"),
                    Image.asset("assets/images/credit_card.webp"),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(16.h),
                padding: EdgeInsets.all(16.h),
                width: MediaQuery.sizeOf(context).width,
                height: 120.h,
                color: const Color(0xff181818),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Visa Card Number",
                      style: TextStyle(
                        color: Color(0xffD6D6D6),
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Xxxx Xxxx Xxxx 4645",
                      style: TextStyle(
                        color: Color(0xffA3A3A3),
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "Visa Card Holder Name",
                      style: TextStyle(
                        color: Color(0xffD6D6D6),
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Abbas Baig",
                      style: TextStyle(
                        color: Color(0xffA3A3A3),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(16.h),
                padding: EdgeInsets.all(16.h),
                width: MediaQuery.sizeOf(context).width,
                height: 120.h,
                color: const Color(0xff181818),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Order",
                          style: TextStyle(
                            color: Color(0xffA3A3A3),
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "\$75.00",
                          style: TextStyle(
                            color: Color(0xffA3A3A3),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery",
                          style: TextStyle(
                            color: Color(0xffA3A3A3),
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "\$5.00",
                          style: TextStyle(
                            color: Color(0xffA3A3A3),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Discount",
                          style: TextStyle(
                            color: Color(0xffA3A3A3),
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "\$4.00",
                          style: TextStyle(
                            color: Color(0xffA3A3A3),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                            color: Color(0xffD6D6D6),
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "\$79.00",
                          style: TextStyle(
                            color: Color(0xffD6D6D6),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //const Expanded(child: SizedBox()),
              Padding(
                padding: EdgeInsets.all(16.h),
                child: CustomCartBtn(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const VerificationPaymentView()));
                    },
                    label: "Pay"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
