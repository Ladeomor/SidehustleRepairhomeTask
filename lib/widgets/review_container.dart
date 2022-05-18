import 'package:flutter/material.dart';


class ReviewsContainer extends StatelessWidget {
  const ReviewsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      width: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xFFF3B29E).withOpacity(0.40),
      ),
      child: Center(child: Text('Reviews', style: TextStyle(color: Color(0xFF1b1b1d), fontSize: 15, fontFamily: 'Gotham'),)),
    );
  }
}
