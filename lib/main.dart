import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indidual_e_commerce_app/features/auth/presentation/screens/sign_up_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      tools: const [
        ...DevicePreview.defaultTools,
        //CustomPlugin(),
      ],
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(350, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child){
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          home: AnimatedSplashScreen(
            centered: true,
              duration: 3000,
              splashIconSize: 500,
              splash: Image.asset("assets/images/splash.jpg"),
              nextScreen: const SignUpScreen(),
              splashTransition: SplashTransition.fadeTransition,
              backgroundColor: Colors.white),
        );
      },
    );
  }
}
