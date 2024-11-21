import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projectfci/core/Helpers/spacing.dart';
import 'package:projectfci/core/Themeing/styles.dart';

import 'custom_pranks_and_favorites_container.dart';
import 'custom_rate_app_container.dart';
import 'custom_share_app_container.dart';
import 'custom_trending_list.dart';

class HomeScreenViewBody extends StatelessWidget {
  const HomeScreenViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Image.asset(
              'assets/images/topcontainer.png',
              fit: BoxFit.cover,
            ),
          ),
          ///////////////////////////////////////////////////////////////////////
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10.h,
            ),
          ),
          //////////////////////////////////////////////////////////////
          SliverToBoxAdapter(
            child: CustomPranksAndFavoritesContainer(),
          ),
          //////////////////////////////////////////////////////////////
          SliverToBoxAdapter(
            child: SizedBox(
              height: 15.h,
            ),
          ),
          //////////////////////////////////////////////////////////////
          SliverToBoxAdapter(
              child: Text(
            "Most Popular Sounds",
            style: AppStyles.font24BlackBold,
          )),
          //////////////////////////////////////////////////////////////
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10.h,
            ),
          ),
          //////////////////////////////////////////////////////////////
          CustomTrendingList(),
          //////////////////////////////////////////////////////////////
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30.h,
            ),
          ),
          //////////////////////////////////////////////////////////////
          SliverToBoxAdapter(
            child: CustomRateAppContainer(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20.h,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomShareAppContainer(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20.h,
            ),
          ),
        ],
      ),
    );
  }
}
