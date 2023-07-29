import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter/bloc/book_bloc/book_bloc.dart';
import 'package:harry_potter/bloc/book_bloc/book_state.dart';
import 'package:harry_potter/screens/views/book_viewer.dart';

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
            if (state is! BookErrorState) BookViewer(books: books),
            if (state is BookLoadingState)
              const Center(
                child: CircularProgressIndicator(),
              ),
            if (state is BookErrorState) Text(state.message),
          ],
        );
      }),
    );
  }
}
