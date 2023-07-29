import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final void Function() onPress;
  final bool isActive;

  const MenuItem({
    super.key,
    required this.icon,
    required this.label,
    required this.onPress,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: isActive ? null :  onPress,
      child: isActive ? Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Colors.white.withOpacity(0.5),
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              width: 2,
            ),
            Text(
              label,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ) :  Padding(
        padding: const EdgeInsets.all(5),
        child: Icon(
          icon,
          color: Colors.grey,
        ),
      ),
    );
  }
}
