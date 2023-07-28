import 'package:bloc/bloc.dart';
import 'package:harry_potter/bloc/movie_bloc/movie_event.dart';
import 'package:harry_potter/bloc/movie_bloc/movie_state.dart';
import 'package:harry_potter/common/apis/apis.dart';
import 'package:harry_potter/common/core/service_locator.dart';
import 'package:harry_potter/common/models/base_api.dart';
import 'package:harry_potter/common/services/network_service.dart';
import '../../common/models/movie_model.dart';





class MovieBloc extends Bloc<MovieEvent, MovieState> {
  MovieBloc() : super(const MovieInitState(movies: [])){
    on<MovieLoadingEvent>((event, emit) => _loading(event, emit));
  }

  void _loading(MovieLoadingEvent event, Emitter<MovieState> emit) async{
    emit(MovieLoadingState(movies: state.movies));
    Map<String, dynamic>? data = await locator.get<Network>().get(api: Apis.movies) as Map<String, dynamic>;
    BaseApi base = BaseApi<Movie>.fromJson(data);
    emit(MovieLoadedState(movies: base.category as List<Movie>));
  }

}