import 'package:flutter/material.dart';
import 'costum_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CostumAppBar(),
        FeaturedBooksListView(),
      ],
    );
  }
}

