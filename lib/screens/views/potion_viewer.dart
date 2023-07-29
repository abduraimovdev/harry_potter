import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:harry_potter/common/models/movie_model.dart';
import 'package:harry_potter/common/models/potion_model.dart';
import 'package:harry_potter/screens/views/post_view.dart';

class PotionViewer extends StatelessWidget {
  const PotionViewer({
    super.key,
    required this.potions,
  });

  final List<Potion> potions;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: potions.length,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 80 / 120),
      itemBuilder: (context, index) => PostView(
        title: potions[index].attribute.name,
        subTitle: potions[index].attribute.effect.toString(),
        url: potions[index].attribute.image,
      ),
    );
  }
}
