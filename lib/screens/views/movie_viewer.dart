import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter/bloc/movie_bloc/movie_bloc.dart';
import 'package:harry_potter/bloc/movie_bloc/movie_event.dart';
import 'package:harry_potter/common/models/movie_model.dart';
import 'package:harry_potter/screens/movie_screen/detail_movie_screen.dart';
import 'package:harry_potter/screens/views/post_view.dart';

class MovieViewer extends StatelessWidget {
  const MovieViewer({
    super.key,
    required this.movies,
  });

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 100),
      child: GridView.builder(
        itemCount: movies.length,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 80 / 120),
        itemBuilder: (context, index) => CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () async {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailMovieScreen(
                  movie: movies[index],
                ),
              ),
            );
          },
          child: PostView(
            title: movies[index].attribute.title,
            subTitle: movies[index].attribute.slug,
            url: movies[index].attribute.poster,
          ),
        ),
      ),
    );
  }
}
