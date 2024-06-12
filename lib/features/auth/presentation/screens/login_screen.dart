import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:indidual_e_commerce_app/core/google_nav_bar.dart';
import '../widgets/bottom_actions.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_or_slider.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/custom_text_button.dart';
import '../widgets/screen_title.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
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
                  const Center(child: ScreenTitle(title: "Sign In Your Account")),
                  Image.asset(
                    "assets/images/auth.png",
                    height: 250.h,
                  ),
                  CustomTextFormField(
                    controller: email,
                    labelText: 'Email Address',
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
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
                  Row(
                    children: [
                      const Expanded(child: SizedBox()),
                      CustomTextButton(
                        sentence: 'Forget Password',
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ForgotPasswordScreen()));
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 24.h , top: 8.h),
                    child: CustomButton(
                      label: 'Sign In',
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
