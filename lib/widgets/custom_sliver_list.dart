import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/list_item.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return const ListItem();
      },
      itemCount: 20,
    );
  }
}
