import 'package:bookly/Features/splash/presentation/view/widgets/costum_book_image.dart';
import 'package:flutter/material.dart';
import 'book_action.dart';
import 'book_details_section.dart';
import 'costum_book_details_app_bar.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CostumBookDetailsAppBar(),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.175),
                  child: const CostumBookImage(),
                ),
                const SizedBox(
                  height: 40,
                ),
                const BookDetailsSection(),
                const SizedBox(
                  height: 25,
                ),
                const BookAction(),
                const Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                const SimilarBooksSection(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
