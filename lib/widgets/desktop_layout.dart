import 'package:flutter/material.dart';
import 'package:starter_project_adaptive_ui/widgets/tablet_layout.dart';

import 'custom_desktop_widget.dart';
import 'custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TabletLayout(),
            )),
        Expanded(
            child: Padding(
          padding: EdgeInsets.only(top: 16),
          child: CustomDesktopWidget(),
        ))
      ],
    );
  }
}
