import 'package:flutter/material.dart';
import 'package:sidehustle_ui_task/constants.dart';
import 'package:sidehustle_ui_task/widgets/order_button.dart';
import 'package:sidehustle_ui_task/widgets/repair_list_card.dart';
import 'package:sidehustle_ui_task/widgets/review_container.dart';

import 'cart_screen.dart';

class RepairScreen extends StatelessWidget {
  const RepairScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/repairbg.png'),
              ),
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0XFFF3B29E).withOpacity(0.40),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(onTap: (){Navigator.pop(context);},child: Image.asset('assets/images/Arrow 1.png')),
                      SizedBox(width: 50,),

                      Text('Fix Microwave',  style: bigTextStyle,),
                    ],
                  ),
                  Container(
                    width: 700,
                    margin: EdgeInsets.only(top: 80),
                      child: Image.asset('assets/images/Rectangle 31.png')),

                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(

            color: Color(0xFFEEEDF3),
            padding: const EdgeInsets.only(left: 25, right: 26),
            child: Column(
              children: [
                Row(
                  children: [
                    ReviewsContainer(),
                    SizedBox(width: 10,),
                    Container(
                      height: 63,
                      width: 78,
                      decoration: BoxDecoration(
                        color: Color(0xFF1B1B1D),
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Image.asset('assets/images/messageicon.png'),
                    ),


                  ],
                ),
                SizedBox(height: 20,),
                RepairListCard(firstText: 'Repair', secondText: '\$52'),
                SizedBox(height: 20,),
                RepairListCard(firstText: 'Setup', secondText: '\$12'),
                SizedBox(height: 20,),

                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> CartScreen()));

                      },
                        child: OrderButton(color: Color(0xff1b1b1d), text: 'Order repair', textColor: Color(0XFFF9F9F9),)),
                    SizedBox(width: 10,),
                    Container( decoration: BoxDecoration(            borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFFE8E8E8),)),
    child: OrderButton(color: Color(0xffffffff), text: 'Order setup', textColor: Color(0xff1b1b1d),))

                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
