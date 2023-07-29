sealed class SpellEvent {
  const SpellEvent();
}

class SpellLoadingEvent extends SpellEvent {
  const SpellLoadingEvent();
}

class SpellLoadedEvent extends SpellEvent {
  const SpellLoadedEvent();
}

class SpellErrorEvent extends SpellEvent {
  const SpellErrorEvent();
}
