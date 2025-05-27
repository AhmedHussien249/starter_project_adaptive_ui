
import 'package:flutter/material.dart';
import 'package:starter_project_adaptive_ui/widgets/custom_sliver_list.dart';

import 'custom_sliver_grid.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return const Text('Tablet layout');
              } else {
                return const CustomSliverGrid();
              }
            }),
          ),
          const CustomSliverList()
        ],
      ),
    );
  }
}
