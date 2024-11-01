import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.0),
          child: Text(
            '4.8',
            style: Styles.textStyle18,
          ),
        ),
        Text(
          '(2390)',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
