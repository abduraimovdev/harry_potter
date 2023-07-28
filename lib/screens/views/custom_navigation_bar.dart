import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu_item.dart';

class CustomNavigationBar extends StatefulWidget {
  final void Function(int value) onChange;

  const CustomNavigationBar({
    super.key,
    required this.onChange,
  });

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10,
        ),
        child: Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.05),
            border: Border(
              top: BorderSide(
                color: Colors.white.withOpacity(0.2),
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MenuItem(
                icon: CupertinoIcons.app,
                label: "Movies",
                onPress: () => setState(() {
                  currentIndex = 0;
                  widget.onChange(currentIndex);
                }),
                isActive: currentIndex == 0,
              ),
              MenuItem(
                icon: CupertinoIcons.book,
                label: "Books",
                onPress: () => setState(() {
                  currentIndex = 1;
                  widget.onChange(currentIndex);
                }),
                isActive: currentIndex == 1,
              ),
              MenuItem(
                icon: CupertinoIcons.wand_stars,
                label: "Spells",
                onPress: () => setState(() {
                  currentIndex = 2;
                  widget.onChange(currentIndex);
                }),
                isActive: currentIndex == 2,
              ),
              MenuItem(
                icon: Icons.local_drink_rounded,
                label: "Potions",
                onPress: () => setState(() {
                  currentIndex = 3;
                  widget.onChange(currentIndex);
                }),
                isActive: currentIndex == 3,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
