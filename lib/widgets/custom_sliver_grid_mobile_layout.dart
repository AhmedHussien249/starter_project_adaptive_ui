import 'package:flutter/material.dart';

import 'custom_item.dart';

class CustomSliverGridMobileLayout extends StatelessWidget {
  const CustomSliverGridMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return const CustomItem();
      },
    );
  }
}
