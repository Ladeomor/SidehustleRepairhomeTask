import 'package:flutter/material.dart';
import 'package:sidehustle_ui_task/constants.dart';

class CartCardWidget extends StatelessWidget {
  final String firstText;
final String secondText;
final String price;
final String leadingImage;
final String trailingImage;

  const CartCardWidget({Key? key,
    required this.firstText,
    required this.price,
    this.secondText = '',
    this.leadingImage = '',
    this.trailingImage = 'assets/images/Arrow 1.png',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFD6E3FF),
        border: Border.all(color: Color(0xFFEAEAEA)),
        borderRadius: BorderRadius.circular(10.0),

      ),
      height: 70,

      child: ListTile(
          title: Row(
            children: [
              Text(firstText, style: textStylee,),
              SizedBox(width: 70,),
              Text(price, style: listTextStyle,),
            ],
          ),
          subtitle: Text(secondText, style: smallTextStylee,),
          leading: Container(
              decoration: BoxDecoration(
                color: Color(0XFFC7D9FF),
                borderRadius: BorderRadius.circular(10.0),

              ),
              height: 45,
              width: 45,
              child: Image.asset(leadingImage)),
          trailing: Image.asset(trailingImage)),
    );
  }
}
