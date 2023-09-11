import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    return SizedBox(
      height: height * .15,
      child: ListView.builder(
        physics:  const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          child: CustomBookImage(),
        ),
      ),
    );
  }
}
