
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter/bloc/potion_bloc/potion_event.dart';
import 'package:harry_potter/bloc/potion_bloc/potion_state.dart';
import 'package:harry_potter/common/apis/apis.dart';
import 'package:harry_potter/common/core/service_locator.dart';
import 'package:harry_potter/common/models/base_api.dart';
import 'package:harry_potter/common/services/network_service.dart';
import '../../common/models/potion_model.dart';

class PotionBloc extends Bloc<PotionEvent, PotionState> {
  PotionBloc() : super(const PotionInitState(potions: [])){
    on<PotionLoadingEvent>((event, emit) => _loading(event, emit));
  }

  void _loading(PotionLoadingEvent event, Emitter<PotionState> emit) async{
    emit(PotionLoadingState(potions: state.potions));
    Map<String, dynamic>? data = await locator.get<Network>().get(api: Apis.potions) as Map<String, dynamic>;
    BaseApi base = BaseApi<Potion>.fromJson(data);
    emit(PotionLoadedState(potions: base.category as List<Potion>));
  }

}