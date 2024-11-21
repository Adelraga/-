import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectfci/core/Helpers/spacing.dart';

import 'custom_all_prank_container.dart';
import 'custom_favourite_sound.dart';

class CustomPranksAndFavoritesContainer extends StatelessWidget {
  const CustomPranksAndFavoritesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomAllPrankContainer(),
          CustomFavouriteSound(),
        ],
      ),
    );
  }
}
