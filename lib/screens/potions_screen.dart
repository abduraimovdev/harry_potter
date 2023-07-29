import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter/bloc/potion_bloc/potion_bloc.dart';
import 'package:harry_potter/bloc/potion_bloc/potion_state.dart';
import 'package:harry_potter/screens/views/potion_viewer.dart';

class PotionsScreen extends StatelessWidget {
  const PotionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text("Potions"),
      ),
      backgroundColor: Colors.transparent,
      body: BlocBuilder<PotionBloc, PotionState>(builder: (context, state) {
        final potions = state.potions!;
        return Stack(
          children: [
            if (state is! PotionErrorState) PotionViewer(potions: potions),
            if (state is PotionLoadingState)
              const Center(
                child: CircularProgressIndicator(),
              ),
            if (state is PotionErrorState) Text(state.message),
          ],
        );
      }),
    );
  }
}
