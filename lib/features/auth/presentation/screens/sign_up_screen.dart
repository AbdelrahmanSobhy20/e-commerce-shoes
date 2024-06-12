import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:indidual_e_commerce_app/core/google_nav_bar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_or_slider.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/custom_text_button.dart';
import '../widgets/screen_title.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController fullName = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffF7F7F7),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Center(child: ScreenTitle(title: "Sign up Your Account")),
                  Image.asset(
                    "assets/images/auth.png",
                    height: 250.h,
                  ),
                  CustomTextFormField(
                    controller: fullName,
                    labelText: 'Full Name',
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  CustomTextFormField(
                    controller: email,
                    labelText: 'Email Address',
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.email(),
                    ]),
                  ),
                  CustomTextFormField(
                    controller: password,
                    labelText: 'Password',
                    obscureText: true,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 24.h),
                    child: CustomButton(
                      label: 'Sign Up',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const GoogleNavBar(),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  const CustomOrSlider(),
                  CustomTextButton(
                    sentence: 'Already have an account',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
