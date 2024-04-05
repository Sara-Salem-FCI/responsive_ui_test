import 'package:flutter/material.dart';

class CustomDesktopContainer extends StatelessWidget {
  const CustomDesktopContainer({super.key, required this.containerColor});
  final Color containerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: containerColor,
      ),
    );
  }
}
