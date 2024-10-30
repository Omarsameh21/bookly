import 'package:flutter/material.dart';

import 'costum_app_bar.dart';
import 'costum_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CostumAppBar(),
        CostumListViewItem(),
      ],
    );
  }
}

