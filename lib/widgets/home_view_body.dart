import 'package:flutter/material.dart';
import 'package:starter_project_adaptive_ui/widgets/tablet_layout.dart';

import 'desktop_layout.dart';
import 'mobile_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: LayoutBuilder(builder: (context, constraints){
        if(constraints.maxWidth < 600){
          return const MobileLayout();
        }else if (constraints.maxWidth < 900){
          return const TabletLayout();
        }else{
          return const DesktopLayout();
        }
      }),
    );
  }
}

