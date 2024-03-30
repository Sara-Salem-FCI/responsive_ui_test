import 'package:flutter/material.dart';

import '../models/drawer_model.dart';

class DrawerItemsListView extends StatelessWidget {
  const DrawerItemsListView({super.key});
  static List<DrawerModel> drawerItems = [
    DrawerModel(title: 'Dashboard', icon: Icons.dashboard),
    DrawerModel(title: 'Favorite', icon: Icons.favorite),
    DrawerModel(title: 'Settings', icon: Icons.settings),
    DrawerModel(title: 'Help', icon: Icons.help),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Icon(drawerItems[index].icon),
          title: Text(drawerItems[index].title),
        );
      },
      itemCount: drawerItems.length,
    );
  }
}

