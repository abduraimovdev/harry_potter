import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter/bloc/book_bloc/book_bloc.dart';
import 'package:harry_potter/bloc/book_bloc/book_state.dart';
import 'package:harry_potter/common/models/Book_model.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text("Books"),
      ),
      backgroundColor: Colors.transparent,
      body: BlocBuilder<BookBloc, BookState>(builder: (context, state) {
        final books = state.books!;
        return Stack(
          children: [
            if (state is! BookErrorState)
              BookViewer(books: books),
            if (state is BookLoadingState)
              const Center(
                child: CircularProgressIndicator(),
              ),
            if (state is BookErrorState)
              Text(state.message),
          ],
        );
      }),
    );
  }
}

class BookViewer extends StatelessWidget {
  const BookViewer({
    super.key,
    required this.books,
  });

  final List<Book> books;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: books.length,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => Container(

        color: Colors.primaries[index],
        // child: Text(books[0].attribute.title),
      ),
    );
  }
}
