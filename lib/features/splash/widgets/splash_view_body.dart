import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/Routing/app_router.dart';
import '../../../core/Routing/routes.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    controller.forward();
    Future.delayed(const Duration(seconds: 4), () {
     
      GoRouter.of(context).push(Routes.home);
    });
  }

  @override
  void dispose() {
    super.dispose();

    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: MediaQuery.of(context).size.height,
      color: Color(0xffF5F0E2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeTransition(
            opacity: animation,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    width: 400,
                    child: Image.asset(
                      'assets/images/ابعتهالوووا logo 1.png',
                    ),
                  ),

                ),
              ],
              // Adjust the height as needed
            ),
          ),
        ],
      ),
    );
  }
}

void navigateToHome() {}
