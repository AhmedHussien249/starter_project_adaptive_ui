import 'package:flutter/material.dart';

import 'custom_list_for_tablet_layout.dart';
import 'custom_sliver_list.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const  CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        CustomListForTabletLayout(),
        CustomSliverList()
      ],
    );
  }
}
