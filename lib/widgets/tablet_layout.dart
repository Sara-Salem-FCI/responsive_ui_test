import 'package:flutter/cupertino.dart';
import 'package:responsive_ui/widgets/custom_list_view.dart';

import 'custom_sliver_list.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomListView(),
        CustomSliverList(),
      ],
    );
  }
}
