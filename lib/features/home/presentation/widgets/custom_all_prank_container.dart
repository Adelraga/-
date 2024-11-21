import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:projectfci/core/Themeing/colors.dart';
import 'package:projectfci/core/Themeing/styles.dart';

import '../../../../core/Helpers/spacing.dart';
import '../../../../core/Routing/app_router.dart';
import '../../../../core/Routing/routes.dart';

class CustomAllPrankContainer extends StatelessWidget {
  const CustomAllPrankContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector
    (
      onTap: () {

      GoRouter.of(context).push(Routes.allPranksSound);

      },
      child: Container(
        width: 170,
        height: 199.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [MainColors.pinkLight, MainColors.pinkDark],
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
                      'assets/images/allPranksSound.png',
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
                'All Prank Sound',
                style: AppStyles.font23WhiteBold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
