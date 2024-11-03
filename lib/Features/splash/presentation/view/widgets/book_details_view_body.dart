import 'package:bookly/Features/splash/presentation/view/widgets/book_rating.dart';
import 'package:bookly/Features/splash/presentation/view/widgets/costum_book_image.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'book_action.dart';
import 'costum_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CostumBookDetailsAppBar(),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.175),
            child: const CostumBookImage(),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40, bottom: 8),
            child: Text(
              'The Jungle Book',
              style: Styles.textStyle30,
            ),
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                // color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 25,
          ),
          const BookAction(),
        ],
      ),
    );
  }
}
