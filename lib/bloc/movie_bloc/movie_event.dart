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
