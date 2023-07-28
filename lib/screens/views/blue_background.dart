
import 'package:flutter/material.dart';

class BlurBackground extends StatelessWidget {
  final Widget child;
  const BlurBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );

  }
}
