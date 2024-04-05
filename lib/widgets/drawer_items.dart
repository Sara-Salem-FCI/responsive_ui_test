import 'package:flutter/material.dart';

import '../models/drawer_model.dart';

class DrawerItemsListView extends StatelessWidget {
  const DrawerItemsListView({super.key});

  static List<DrawerModel> drawerItems = [
    DrawerModel(title: 'D a s h b o a r d', icon: Icons.dashboard),
    DrawerModel(title: 'F a v o r i t e', icon: Icons.favorite),
    DrawerModel(title: 'S e t t i n g s', icon: Icons.settings),
    DrawerModel(title: 'H e l p', icon: Icons.help),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Icon(drawerItems[index].icon),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              drawerItems[index].title.toUpperCase(),
            ),
          ),
        );
      },
      itemCount: drawerItems.length,
    );
  }
}
