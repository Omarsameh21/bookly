import 'package:flutter/material.dart';
import '../../../../splash/presentation/view/widgets/books_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //shrinkWrap: true,  //Because shrinkWrap logic depend on build the all items not just the appearing items and that not the best option for good performance
      padding: EdgeInsets.zero,
      itemCount: 6,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BooksListViewItem(),
        );
      },
    );
  }
}
