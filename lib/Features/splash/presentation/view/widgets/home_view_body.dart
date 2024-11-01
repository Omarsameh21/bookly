import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'best_seller_list_view.dart';
import 'costum_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CostumAppBar(),
              FeaturedBooksListView(),
              Padding(
                padding: EdgeInsets.only(
                  top: 50,
                  left: 20,
                  bottom: 20,
                ),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(  
          //  i use "SliverFillRemaining" instead "SliverToBoxAdapter" to delete ShrinkWrap atripute from "BestSellerListView" and not wrap this widget with "Expanded" to avoid issues appearing in ui and make performance better 
          // SliverFillRemaining depend on build the appearing items
          child: BestSellerListView(),
        )
      ],
    );
  }
}
