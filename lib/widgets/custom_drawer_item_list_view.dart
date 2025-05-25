import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import 'custom_drawer_item.dart';

class CustomDrawerItemListView extends StatelessWidget {
  const CustomDrawerItemListView({
    super.key,
    required this.drawerItems,
  });

  final List<DrawerItemModel> drawerItems;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) =>
          CustomDrawerItem(drawerItemModel: drawerItems[index]),
      itemCount: drawerItems.length,
    );
  }
}
