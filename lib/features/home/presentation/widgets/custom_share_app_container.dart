import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/Themeing/colors.dart';

class CustomShareAppContainer extends StatelessWidget {
  const CustomShareAppContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 70.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [MainColors.shareLight, MainColors.shareDark],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(bottom: 15, left: 15, right: 15, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 66.h,
              width: 66.w,
              child: Image.asset(
                'assets/images/share (3).png',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Share App',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
