import 'package:flutter/material.dart';

class CostumBookDetailsAppBar extends StatelessWidget {
  const CostumBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
            onPressed: () => Navigator.pop, icon: const Icon(Icons.clear)),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined)),
      ],
    );
  }
}
