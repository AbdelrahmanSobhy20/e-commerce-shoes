import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:indidual_e_commerce_app/features/auth/presentation/screens/new_password_screen.dart';

import '../widgets/bottom_actions.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_or_slider.dart';
import '../widgets/custom_text_button.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/screen_title.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController email = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        title: const ScreenTitle(title: "Forget Password"),
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
                    "assets/images/forget_password.png",
                    height: 250.h,
                  ),
                  CustomTextFormField(
                    controller: email,
                    labelText: 'Email Address',
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 24.h, top: 8.h),
                    child: CustomButton(
                      label: 'Next',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const NewPasswordScreen(),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  CustomTextButton(sentence: 'Remember The Password? Sign In', onTap: () {Navigator.of(context).pop();},),
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
