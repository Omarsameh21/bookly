import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'costum_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CostumAppBar(),
        FeaturedBooksListView(),
        Padding(
          padding: EdgeInsets.only(
            top: 50,
            left: 16,
            bottom: 24,
          ),
          child: Text(
            'Best Seller',
            style: Styles.titleMedium,
          ),
        )
      ],
    );
  }
}
