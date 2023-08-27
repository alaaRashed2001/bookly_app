import 'package:flutter/material.dart';

import 'custom_listview_item.dart';

class  FeaturedBooksListView extends StatelessWidget {
  const  FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    return SizedBox(
      height: height * .3,
      child: ListView.builder(
        physics:  const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 6,
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomListViewItem(),
          ),
      ),
    );
  }
}
