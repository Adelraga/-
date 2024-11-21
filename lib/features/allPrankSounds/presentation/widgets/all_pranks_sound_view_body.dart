import 'package:flutter/material.dart';

import 'custom_sliver_grid_child.dart';

class AllPranksSoundViewBody extends StatelessWidget {
  const AllPranksSoundViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: CustomScrollView(
        slivers: [
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return CustomSliverGridChild();
              },
              childCount: 50,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 1,
            ),
          )
        ],
      ),
    );
  }
}
