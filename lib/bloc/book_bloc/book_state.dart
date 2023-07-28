import 'package:harry_potter/common/models/Book_model.dart';

sealed class BookState {
  final List<Book>? books;
  const BookState({this.books});
}

class BookInitState extends BookState {
  const BookInitState({required super.books});
}
class BookLoadingState extends BookState {
  const BookLoadingState({required super.books});
}

class BookLoadedState extends BookState {

  const BookLoadedState({required super.books});
}

class BookErrorState extends BookState {
  final String message;

  const BookErrorState({required this.message});
}