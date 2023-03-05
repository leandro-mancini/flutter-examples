import 'package:flutter/material.dart';

class DotIndicatorWidget extends StatelessWidget {
  final bool selected;

  const DotIndicatorWidget({Key? key, required this.selected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 8.0,
        width: 8.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: selected ? const Color(0xFFEB6931) : const Color(0xFFEB6931).withAlpha(20)
        ),
      ),
    );
  }
}