import 'package:flutter/material.dart';
import 'package:starter_project_adaptive_ui/widgets/custom_sliver_list.dart';

import '../views/custom_sliver_grid.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          CustomSliverGrid(),
          CustomSliverList()
        ],
      ),
    );
  }
}
