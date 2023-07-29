import 'package:harry_potter/common/models/spell_model.dart';

sealed class SpellState {
  final List<Spell>? spells;
  const SpellState({this.spells});
}

class SpellInitState extends SpellState {
  const SpellInitState({required super.spells});
}
class SpellLoadingState extends SpellState {
  const SpellLoadingState({required super.spells});
}

class SpellLoadedState extends SpellState {

  const SpellLoadedState({required super.spells});
}

class SpellErrorState extends SpellState {
  final String message;

  const SpellErrorState({required this.message});
}