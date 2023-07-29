import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter/bloc/spell_bloc/spell_event.dart';
import 'package:harry_potter/bloc/spell_bloc/spell_state.dart';
import 'package:harry_potter/common/apis/apis.dart';
import 'package:harry_potter/common/core/service_locator.dart';
import 'package:harry_potter/common/models/base_api.dart';
import 'package:harry_potter/common/services/network_service.dart';
import '../../common/models/spell_model.dart';

class SpellBloc extends Bloc<SpellEvent, SpellState> {
  SpellBloc() : super(const SpellInitState(spells: [])){
    on<SpellLoadingEvent>((event, emit) => _loading(event, emit));
  }

  void _loading(SpellLoadingEvent event, Emitter<SpellState> emit) async{
    emit(SpellLoadingState(spells: state.spells));
    Map<String, dynamic>? data = await locator.get<Network>().get(api: Apis.spells) as Map<String, dynamic>;
    BaseApi base = BaseApi<Spell>.fromJson(data);
    emit(SpellLoadedState(spells: base.category as List<Spell>));
  }

}