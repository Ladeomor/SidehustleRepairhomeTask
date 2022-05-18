import 'package:flutter/material.dart';
import 'package:sidehustle_ui_task/constants.dart';
import 'package:sidehustle_ui_task/widgets/cardwidget.dart';
import 'package:sidehustle_ui_task/widgets/cart_card_widget.dart';
import 'package:sidehustle_ui_task/widgets/cart_component.dart';
import 'package:sidehustle_ui_task/widgets/cart_list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEDF3),

      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/tt.png",
              fit: BoxFit.fitWidth,
              alignment: Alignment.topLeft,
            ),
          ),
          Container(
          padding: EdgeInsets.only(left: 41, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Row(
                  children: [
                      GestureDetector(onTap: (){Navigator.pop(context);},
                        child: Image.asset('assets/images/Arrow 1.png')),
                    SizedBox(width: 120,),
                    Text('Cart', style: bigTextStyle,)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container( decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.16),
                  offset: Offset(0, 4),
                  blurRadius: 6,
                  spreadRadius: 0,
                )
              ]),child: CardWidget(firstText: 'Fix Microwave', secondText: 'Kitchen', leadingImage: 'assets/images/mdi_microwave.png', trailingImage: 'assets/images/Arrow 1.png')),
              CartComponent(firstText: 'Set up Microwave', price: '\$22'),
              CartComponent(firstText: 'Repair Microwave', price: '\$80'),

              SizedBox(height: 20,),
              CartCardWidget(firstText: 'Fix Fridge', secondText: '2 service',price: '\$70', leadingImage: 'assets/images/fridge.png', trailingImage: 'assets/images/Arrow 1.png',),
              SizedBox(height: 19,),
              CartCardWidget(firstText: 'Fix Fridge', secondText: '1 service', price: '\$70', leadingImage: 'assets/images/television.png', trailingImage: 'assets/images/Arrow 1.png',),
              SizedBox(height: 19,),

              CartCardWidget(firstText: 'Fix Fridge', secondText: '1 service',price: '\$70', leadingImage: 'assets/images/washer.png', trailingImage: 'assets/images/Arrow 1.png',),
              SizedBox(height: 60,),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total price', style: TextStyle(color: Color(0xFF7b7b7b),fontFamily: 'Gotham', fontSize: 16, fontWeight: FontWeight.w500
                        )),
                        Text('\$302', style: TextStyle(color: Color(0xFF000000),fontFamily: 'Gotham', fontSize: 16, fontWeight: FontWeight.w500
    ))
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF1B1B1D),

                      ),
                      margin: EdgeInsets.all(5),
                      width: 357,
                      height: 63,
                      child: Center(
                        child: Text('Make an order', style: TextStyle(color: Color(0xFFF9F9F9),fontFamily: 'Gotham', fontSize: 16, fontWeight: FontWeight.w500
                        ),),
                      ),


                    ),
                  ],
                ),
              )


            ],
          ),

        ),
          Positioned(right: -10,
      top: -30,
      child: Image.asset(
      'assets/images/Group 4(1).png',
      height: 353,
      width: 508,
      ),)

      ]
      ),
    );
  }
}
