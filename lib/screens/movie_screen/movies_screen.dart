import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter/bloc/movie_bloc/movie_bloc.dart';
import 'package:harry_potter/bloc/movie_bloc/movie_state.dart';
import 'package:harry_potter/screens/views/movie_viewer.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text("Movies"),
      ),
      backgroundColor: Colors.transparent,
      body: BlocBuilder<MovieBloc, MovieState>(
        builder: (context, state) {
          if (state.movies != null) {
            final movies = state.movies!;
            return Stack(
              children: [
                if (state is! MovieErrorState) MovieViewer(movies: movies),
                if (state is MovieLoadingState)
                  const Center(
                    child: CircularProgressIndicator(),
                  ),
                if (state is MovieErrorState) Text(state.message),
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
