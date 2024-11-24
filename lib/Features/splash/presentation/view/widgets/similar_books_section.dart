import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'costum_book_image.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You Can Also Like',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.16,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: CostumBookImage(imageUrl: 'https://theartandbeyond.com/wp-content/uploads/2022/04/Vintage-Color-Palett-11-min.jpg',),
                );
              }),
        ),
      ],
    );
  }
}
