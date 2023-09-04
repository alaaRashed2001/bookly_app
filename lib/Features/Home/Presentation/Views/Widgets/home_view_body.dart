import 'package:bookly_app/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_listview_item.dart';
import 'custom_appbar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 52,),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
