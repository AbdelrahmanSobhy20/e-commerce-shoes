import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.label, required this.onPressed});
  final String label;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffDB3022),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r)
          )
        ),
        child:  Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: "Metropolis",
            fontWeight: FontWeight.w400,
          ),
        ));
  }
}
