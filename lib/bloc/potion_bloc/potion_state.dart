
import 'package:harry_potter/common/models/potion_model.dart';

sealed class PotionState {
  final List<Potion>? potions;
  const PotionState({this.potions});
}

class PotionInitState extends PotionState {
  const PotionInitState({required super.potions});
}
class PotionLoadingState extends PotionState {
  const PotionLoadingState({required super.potions});
}

class PotionLoadedState extends PotionState {

  const PotionLoadedState({required super.potions});
}

class PotionErrorState extends PotionState {
  final String message;

  const PotionErrorState({required this.message});
}