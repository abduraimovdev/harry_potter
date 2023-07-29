sealed class BookEvent {
  const BookEvent();
}

class BookLoadingEvent extends BookEvent {
  const BookLoadingEvent();
}

class BookLoadedEvent extends BookEvent {
  const BookLoadedEvent();
}

class BookErrorEvent extends BookEvent {
  const BookErrorEvent();
}

