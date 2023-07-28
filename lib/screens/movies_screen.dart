import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter/bloc/movie_bloc/movie_bloc.dart';
import 'package:harry_potter/bloc/movie_bloc/movie_state.dart';
import 'package:harry_potter/common/models/movie_model.dart';

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
      body: BlocBuilder<MovieBloc, MovieState>(builder: (context, state) {
        final movies = state.movies!;
        return Stack(
          children: [
            if (state is! MovieErrorState)
              MovieViewer(movies: movies),
            if (state is MovieLoadingState)
              const Center(
                child: CircularProgressIndicator(),
              ),
            if (state is MovieErrorState)
               Text(state.message),
          ],
        );
      }),
    );
  }
}

class MovieViewer extends StatelessWidget {
  const MovieViewer({
    super.key,
    required this.movies,
  });

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: movies.length,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => Container(

        color: Colors.primaries[index],
        child: Text(movies[0].attribute.title),
      ),
    );
  }
}
