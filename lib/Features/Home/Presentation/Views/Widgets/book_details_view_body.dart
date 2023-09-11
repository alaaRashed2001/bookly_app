import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'book_actions.dart';
import 'book_details_section.dart';
import 'custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                SizedBox(
                  height: 38,
                ),
                BookActions(),
                Expanded(
                    child: SizedBox(
                  height: 50,
                )),
                SimilarBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
