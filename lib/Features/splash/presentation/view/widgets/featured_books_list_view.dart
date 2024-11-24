import 'package:bookly/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/splash/presentation/view/widgets/costum_error_message.dart';
import 'package:bookly/Features/splash/presentation/view/widgets/costum_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'costum_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: CostumBookImage(
                      imageUrl:
                          'https://theartandbeyond.com/wp-content/uploads/2022/04/Vintage-Color-Palett-11-min.jpg',
                    ),
                  );
                }),
          );
        } else if (state is FeaturedBooksFailure) {
          return CostumErrorMessage(errMessage: state.errmasage);
        } else {
          return const CostumIndicator();
        }
      },
    );
  }
}
