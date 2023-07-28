import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter/bloc/book_bloc/book_event.dart';
import 'package:harry_potter/bloc/book_bloc/book_state.dart';
import 'package:harry_potter/common/apis/apis.dart';
import 'package:harry_potter/common/core/service_locator.dart';
import 'package:harry_potter/common/models/base_api.dart';
import 'package:harry_potter/common/services/network_service.dart';
import '../../common/models/Book_model.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  BookBloc() : super(const BookInitState(books: [])){
    on<BookLoadingEvent>((event, emit) => _loading(event, emit));
  }

  void _loading(BookLoadingEvent event, Emitter<BookState> emit) async{
    emit(BookLoadingState(books: state.books));
    Map<String, dynamic>? data = await locator.get<Network>().get(api: Apis.books) as Map<String, dynamic>;
    BaseApi base = BaseApi<Book>.fromJson(data);
    emit(BookLoadedState(books: base.category as List<Book>));
  }

}