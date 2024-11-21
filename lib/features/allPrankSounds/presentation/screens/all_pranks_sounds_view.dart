import 'package:flutter/material.dart';
import 'package:projectfci/core/Themeing/styles.dart';
import '../widgets/all_pranks_sound_view_body.dart';

class AllPranksSoundsView extends StatelessWidget {
  const AllPranksSoundsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/images/chevron-left.png')),
        title: Text(
          'All Pranks Sounds',
          style: AppStyles.font28BlackBold,
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
              onTap: () {}, child: Image.asset('assets/images/search.png'))
        ],
      ),
      body: AllPranksSoundViewBody(),
    );
  }
}
