import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final int count;
  final int activeIndex;

  const Indicator({
    super.key,
    required this.count,
    required this.activeIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        count,
            (index) => Container(
          margin: EdgeInsets.only(left: 6),
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: activeIndex == index ? Colors.grey : Colors.black38,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
