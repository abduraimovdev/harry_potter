sealed class PotionEvent {
  const PotionEvent();
}

class PotionLoadingEvent extends PotionEvent {
  const PotionLoadingEvent();
}

class PotionLoadedEvent extends PotionEvent {
  const PotionLoadedEvent();
}

class PotionErrorEvent extends PotionEvent {
  const PotionErrorEvent();
}
