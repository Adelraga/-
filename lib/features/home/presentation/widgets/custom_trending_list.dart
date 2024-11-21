import 'package:flutter/material.dart';

import 'custom_trending_container.dart';

class CustomTrendingList extends StatelessWidget {
  const CustomTrendingList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 150, // Adjust height based on the item size
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return CustomTrendingContainer();
          },
        ),
      ),
    );
  }
}
