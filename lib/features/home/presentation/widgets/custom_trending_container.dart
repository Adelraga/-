import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/Themeing/colors.dart';
import '../../../../core/Themeing/styles.dart';

class CustomTrendingContainer extends StatefulWidget {
  const CustomTrendingContainer({super.key});

  @override
  State<CustomTrendingContainer> createState() =>
      _CustomTrendingContainerState();
}

class _CustomTrendingContainerState extends State<CustomTrendingContainer> {
  bool isStarSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: FittedBox(
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 255, 199, 131),
                MainColors.orangeDark
              ],
              end: Alignment.topRight,
              begin: Alignment.bottomLeft,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          width: 190.w,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'ايوه يا وحش الكون',
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style: AppStyles.font20WhiteBold,
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          isStarSelected = !isStarSelected;
                        });
                      },
                      child: isStarSelected
                          ? Image.asset("assets/images/selectdStar.png")
                          : Image.asset("assets/images/unselectedStar.png")
                          
                          ),
                  Image.asset("assets/images/share.png"),
                  Image.asset("assets/images/display.png"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
