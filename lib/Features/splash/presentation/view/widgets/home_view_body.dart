import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
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
            bottom: 20,
          ),
          child: Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
        ),
        BestSellerListViewitem(),
      ],
    );
  }
}

class BestSellerListViewitem extends StatelessWidget {
  const BestSellerListViewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          SizedBox(
            height: 125,
            child: AspectRatio(
              aspectRatio: 1.5 / 2.4,
              child: Container(
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: const DecorationImage(
                    image: AssetImage(
                      AssetData.testImage,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Text(
                    'Harry Potter And The Goblet Of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20,
                  ),
                ),
                const Text(
                  'J.K. Rowling',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
