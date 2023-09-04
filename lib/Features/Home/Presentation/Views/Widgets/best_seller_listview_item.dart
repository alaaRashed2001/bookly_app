import 'package:bookly_app/Core/Utils/assets_data.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 128,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5/ 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testImage),
                ),
              ),
            ),
          ),
          Column(
            children: [],
          ),
        ],
      ),
    );
  }
}
