import 'package:flutter/material.dart';

import '../../../../../core/widgets/costum_botton.dart';

class BookAction extends StatelessWidget {
  const BookAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CostumBotton(
              title: '19.99€ ',
              textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              color: Colors.white,
              topLeft: 14,
              bottomLeft: 14,
              onPressed: () {},
            ),
          ),
          Expanded(
            child: CostumBotton(
              title: 'Free Preview',
              textStyle: const TextStyle(
                fontSize: 16,
                // fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              color: Colors.orange,
              topRight: 14,
              bottomRight: 14,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
