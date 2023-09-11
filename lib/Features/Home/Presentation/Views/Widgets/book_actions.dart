import 'package:bookly_app/Core/Widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8,),
      child: Row(
        children: [
          Expanded(child: CustomButtons(
            title: '22.9 \$',
            backgroundColor: Colors.white,
            textColor:Colors.black ,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          )),
          Expanded(child: CustomButtons(
            title: 'For Free',
            fontSize: 16,
            backgroundColor: Color(0xffEf8262),
            textColor:Colors.white ,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          )),

        ],
      ),
    );
  }
}
