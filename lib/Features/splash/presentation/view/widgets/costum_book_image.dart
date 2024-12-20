import 'package:flutter/material.dart';

class CostumBookImage extends StatelessWidget {
  const CostumBookImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5 / 2.4,
      child: Container(
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image:  DecorationImage(
              image: NetworkImage(
            imageUrl,
          )),
        ),
      ),
    );
  }
}
