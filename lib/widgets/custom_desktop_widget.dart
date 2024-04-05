import 'package:flutter/material.dart';

import 'custom_desktop_container.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: CustomDesktopContainer(
              containerColor: Colors.grey,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: CustomDesktopContainer(
              containerColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
