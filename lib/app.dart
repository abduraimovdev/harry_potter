import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter/bloc/book_bloc/book_bloc.dart';
import 'package:harry_potter/bloc/book_bloc/book_event.dart';
import 'package:harry_potter/bloc/movie_bloc/movie_bloc.dart';
import 'package:harry_potter/bloc/movie_bloc/movie_event.dart';
import 'package:harry_potter/bloc/potion_bloc/potion_bloc.dart';
import 'package:harry_potter/bloc/potion_bloc/potion_event.dart';
import 'package:harry_potter/bloc/spell_bloc/spell_bloc.dart';
import 'package:harry_potter/bloc/spell_bloc/spell_event.dart';
import 'package:harry_potter/screens/main_screen.dart';

class HarryApp extends StatelessWidget {
  const HarryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MovieBloc()..add(const MovieLoadingEvent()),
        ),
        BlocProvider(
          create: (context) => BookBloc()..add(const BookLoadingEvent()),
        ),
        BlocProvider(
          create: (context) => SpellBloc()..add(const SpellLoadingEvent()),
        ),
        BlocProvider(
          create: (context) => PotionBloc()..add(const PotionLoadingEvent()),
        ),
      ],
      child: MaterialApp(
        darkTheme: ThemeData.dark(useMaterial3: true),
        themeMode: ThemeMode.dark,
        home: const MainScreen(),
      ),
    );
  }
}
