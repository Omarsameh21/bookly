import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CostumListViewItem extends StatelessWidget {
  const CostumListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 1.5 / 2.4,
        child: Container(
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: const DecorationImage(
                  image: AssetImage(
                AssetData.testImage,
              ))),
        ),
      ),
    );
  }
}
