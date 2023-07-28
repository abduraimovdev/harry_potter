import 'package:flutter/material.dart';

class SpellsScreen extends StatelessWidget {
  const SpellsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text("Spells"),
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
