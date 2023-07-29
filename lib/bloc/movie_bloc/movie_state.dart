import 'package:harry_potter/common/models/movie_model.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

sealed class MovieState {
  final List<Movie>? movies;

  const MovieState({this.movies});
}

class MovieInitState extends MovieState {
  const MovieInitState({required super.movies});
}

class MovieLoadingState extends MovieState {
  const MovieLoadingState({required super.movies});
}

class MovieLoadedState extends MovieState {
  const MovieLoadedState({required super.movies});
}

class MovieErrorState extends MovieState {
  final String message;

  const MovieErrorState({required this.message});
}


