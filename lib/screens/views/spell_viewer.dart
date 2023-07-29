import 'package:flutter/material.dart';
import 'package:harry_potter/screens/views/post_view.dart';
import '../../common/models/spell_model.dart';

class SpellViewer extends StatelessWidget {
  const SpellViewer({
    super.key,
    required this.spell,
  });

  final List<Spell> spell;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: spell.length,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 80 / 120),
      itemBuilder: (context, index) => PostView(
        title: spell[index].attribute.name,
        subTitle: spell[index].attribute.slug,
        url: spell[index].attribute.image,
      ),
    );
  }
}
