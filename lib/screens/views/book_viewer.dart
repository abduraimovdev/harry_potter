
import 'package:flutter/material.dart';
import 'package:harry_potter/common/models/book_model.dart';
import 'package:harry_potter/screens/views/post_view.dart';

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
        itemBuilder: (context, index) {
          Book book = books[index];
          return PostView(
            title: book.attribute!.title.toString(),
            subTitle: book.attribute!.slug.toString(),
            url: book.attribute?.cover,
          );
        });
  }
}
