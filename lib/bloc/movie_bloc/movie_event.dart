import 'package:harry_potter/common/models/movie_model.dart';

sealed class MovieEvent {
  const MovieEvent();
}

class MovieLoadingEvent extends MovieEvent {
  const MovieLoadingEvent();
}

class MovieLoadedEvent extends MovieEvent {
  const MovieLoadedEvent();
}

class MovieErrorEvent extends MovieEvent {
  const MovieErrorEvent();
}
class MovieDetailEvent extends MovieEvent {
  final Movie movie;
  const MovieDetailEvent({required this.movie});
}