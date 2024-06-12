import 'package:flutter/material.dart';

class BottomActions extends StatelessWidget {
  const BottomActions({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){},
              child: Container(
                height: 64,
                width: 92,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Image.asset("assets/images/google.png" , scale: 1.7,),
              ),
            ),
            const SizedBox(width: 16,),
            GestureDetector(
              onTap: (){},
              child: Container(
                height: 64,
                width: 92,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Image.asset("assets/images/facebook.png" , scale: 1.7,) ,
              ),
            ),
          ],
        )
      ],
    );
  }
}
