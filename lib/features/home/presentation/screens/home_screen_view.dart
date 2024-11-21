import 'package:flutter/material.dart';

import '../widgets/home_screen_view_body.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: HomeScreenViewBody(),
      ),
    );
  }
}
