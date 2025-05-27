import 'package:flutter/material.dart';
import 'package:starter_project_adaptive_ui/widgets/custom_drawer.dart';
import 'package:starter_project_adaptive_ui/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFDBDBDB),
        drawer: const CustomDrawer(),
        appBar:// MediaQuery.of(context).size.width < 900
      MediaQuery.sizeOf(context).width < 900
            ? AppBar(
                backgroundColor: Colors.black,
                iconTheme: const IconThemeData(color: Colors.white),
                leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              )
            : null,
        body: const HomeViewBody());
  }
}
// class CustomAdaptiveAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAdaptiveAppBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) => constraints.maxWidth <900 ? AppBar(
//         backgroundColor: Colors.black,
//         iconTheme: const IconThemeData(color: Colors.white),
//         leading: IconButton(
//           onPressed: () {
//             scaffoldKey.currentState?.openDrawer();
//           },
//           icon: const Icon(Icons.menu),
//         ),
//       ):const SizedBox()
//     );
//   }
//
//   @override
//   Size get preferredSize => const Size.fromHeight(56);
// }
