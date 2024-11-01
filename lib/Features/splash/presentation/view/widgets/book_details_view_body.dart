import 'package:bookly/Features/splash/presentation/view/widgets/costum_book_image.dart';
import 'package:flutter/material.dart';
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
        ],
      ),
    );
  }
}
