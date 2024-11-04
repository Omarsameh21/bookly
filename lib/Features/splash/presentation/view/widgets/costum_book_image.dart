import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';

class CostumBookImage extends StatelessWidget {
  const CostumBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5 / 2.4,
      child: Container(
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: const DecorationImage(
              image: AssetImage(
            AssetData.testImage,
          )),
        ),
      ),
    );
  }
}
