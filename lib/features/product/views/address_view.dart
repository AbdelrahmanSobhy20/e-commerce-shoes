import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indidual_e_commerce_app/features/product/views/payment_method_view.dart';
import 'package:indidual_e_commerce_app/features/product/widgets/custom_cart_btn.dart';

class AddressView extends StatefulWidget {
  const AddressView({super.key});

  @override
  State<AddressView> createState() => _AddressViewState();
}

class _AddressViewState extends State<AddressView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                "assets/images/map.webp",
                height: MediaQuery.sizeOf(context).height / 2,
              ),
              SizedBox(
                height: 35.h,
              ),
              Container(
                height: MediaQuery.sizeOf(context).height/5.5,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    color: const Color(0xff181818),
                    borderRadius: BorderRadius.circular(5.r)),
                child: Padding(
                  padding: EdgeInsets.all(12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Select Your Adders",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      const Text(
                        "Your Adders",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      const Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.location_on_rounded,
                                color: Colors.white,
                              ),
                              Text(
                                "Gutail Gilgit Public Chock Street No 1",
                                style: TextStyle(color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Expanded(child: SizedBox()),
              Padding(
                padding: EdgeInsets.all(16.h),
                child: CustomCartBtn(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PaymentMethodView()));
                }, label: 'Added',),
              )
            ],
          ),
        ),
      ),
    );
  }
}
