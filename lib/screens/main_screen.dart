import 'package:flutter/material.dart';
import 'package:harry_potter/screens/books_screen.dart';
import 'package:harry_potter/screens/movies_screen.dart';
import 'package:harry_potter/screens/potions_screen.dart';
import 'package:harry_potter/screens/spells_screen.dart';
import 'package:harry_potter/screens/views/blue_background.dart';
import 'package:harry_potter/screens/views/custom_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: BlurBackground(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: const [
            MoviesScreen(),
            BooksScreen(),
            SpellsScreen(),
            PotionsScreen(),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        onChange: (page) {
          pageController.jumpToPage(page);
        },
      ),
    );
  }
}
