import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter/bloc/spell_bloc/spell_bloc.dart';
import 'package:harry_potter/bloc/spell_bloc/spell_state.dart';
import 'package:harry_potter/screens/views/spell_viewer.dart';

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
      body: BlocBuilder<SpellBloc, SpellState>(builder: (context, state) {
        final spells = state.spells!;
        return Stack(
          children: [
            if (state is! SpellErrorState) SpellViewer(spell: spells),
            if (state is SpellLoadingState)
              const Center(
                child: CircularProgressIndicator(),
              ),
            if (state is SpellErrorState) Text(state.message),
          ],
        );
      }),
    );
  }
}
