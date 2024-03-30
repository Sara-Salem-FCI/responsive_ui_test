import 'package:flutter/cupertino.dart';
import 'package:responsive_ui/widgets/grid_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const AspectRatio(
            aspectRatio: 1,
            child: GridItem(),
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: 20,
      ),
    );
  }
}
