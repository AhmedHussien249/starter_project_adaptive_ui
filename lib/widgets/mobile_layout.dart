import 'package:flutter/material.dart';

import 'custom_sliver_grid_mobile_layout.dart';
import 'custom_sliver_list.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        CustomSliverGridMobileLayout(),
        CustomSliverList()
      ],
    );
  }
}
