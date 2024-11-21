import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projectfci/core/Themeing/colors.dart';
import 'package:projectfci/core/Themeing/styles.dart';

import '../../../../core/Helpers/spacing.dart';

class CustomFavouriteSound extends StatelessWidget {
  const CustomFavouriteSound({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 199.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [MainColors.orangeLight, MainColors.orangeDark],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 7, left: 15, right: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80.w,
                  child: Image.asset(
                    'assets/images/favoritesSound.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ],
            ),
            verticalSpace(10),
            Text(
              'Favorites Sound',
              style: AppStyles.font23WhiteBold,
            ),
          ],
        ),
      ),
    );
  }
}
