import 'package:flutter/material.dart';

class SkipBackButton extends StatelessWidget {
  final bool isFirstPage;
  final VoidCallback onTap;

  const SkipBackButton({
    super.key,
    required this.isFirstPage,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Container(
          width: double.infinity,
          height: 40,
          color: Color(0xFF353535),
          alignment: Alignment.center,
          child: Text(
            isFirstPage ? "Skip" : "Back",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
