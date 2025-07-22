import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  final bool isLastPage;
  final VoidCallback onTap;

  const OnboardingButton({
    super.key,
    required this.isLastPage,
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF00A3B7),
          ),
          alignment: Alignment.center,
          child: Text(
            isLastPage ? "Let’s Get Started" : "Next",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
