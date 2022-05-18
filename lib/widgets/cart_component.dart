import 'package:flutter/material.dart';

import '../constants.dart';

class CartComponent extends StatelessWidget {
  final String firstText;
  final String price;

  const CartComponent({Key? key, required this.firstText, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFD6E3FF),
        border: Border.all(color: Color(0xFFEAEAEA)),

      ),
      height: 70,

      child: ListTile(
          title: Text(firstText, style: textStylee,),
        leading: Icon(Icons.remove_circle, color: Color(0xFFCA1414,),),
            trailing: Text(price, style: listTextStyle,),


      ) );

  }
}
