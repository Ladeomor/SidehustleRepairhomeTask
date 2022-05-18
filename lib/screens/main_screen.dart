import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sidehustle_ui_task/constants.dart';
import 'package:sidehustle_ui_task/screens/repair_screen.dart';

import '../widgets/cardwidget.dart';
import '../widgets/contentcontainer.dart';
import '../widgets/searchtextfieldwidget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFEEEDF3),

      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/images/mainbg.png",
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomLeft,
              ),
            ),
            Padding(
            padding: const EdgeInsets.only(left: 28, right: 20, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 44),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu),
                      Image.asset('assets/images/eva_shopping-cart-outline.png',height: 30,width: 25,),
                    ],
                  ),
                ),
                SizedBox(height: 60,),
                Text('Whats broken?',style: bigTextStyle),

                SizedBox(height: 19,),
                SearchTextField(),
                SizedBox(height: 20,),
                Text('Offers',style: bigTextStyle,),
                SizedBox(height: 19,),
                //
                Container(
                 height: 200,
                  width: MediaQuery.of(context).size.width,

                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ContentContainer(
                          backgroundColor: Color(0XFFCAE8F2),
                          progress: 2, size:120,
                          progressColor: Color(0xFFEEEDF3),
                          image: 'assets/images/ATTRAC_3 1.png',
                          firstText: 'Valid until June 30th',
                          secondText: 'Cashback 5% \nfrom each\n repair',),
                        SizedBox(width: 20,),
                        ContentContainer(
                          backgroundColor: Color(0XFFEEEDF3),
                          progress: 1, size: 80,
                          progressColor: Color(0xFFD1D3FA),
                          image: 'assets/images/ATTRAC_3 1.png',

                          firstText: 'Valid until July 2nd',
                          secondText: 'Sale on \nappliances\n repair!',),


                      ]),
                ),
                SizedBox(height: 10,),
                Text('We can fix it',style: bigTextStyle),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19),
                        color: Color(0xFF1B1B1D),
                      ),
                      height: 30, width: 80,child: Center(child: Text('Offers', style: TextStyle(color: Colors.white,fontFamily: 'Gotham', fontSize: 16, fontWeight: FontWeight.w500))),),
                    SizedBox(width: 10,),

                    Text('Kitchen',style: listTextStyle),
                    SizedBox(width: 10,),

                    Text('Livingroom', style: listTextStyle),
                    SizedBox(width: 10,),

                    Text('Bathroom',style: listTextStyle),

                  ],
                ),
                SizedBox(
                  height: 170,
                  child: ListView(
                    children: <Widget>[
                     GestureDetector(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> RepairScreen()));

                      },
                         child: CardWidget(firstText: 'Fix Microwave', secondText: 'Kitchen', leadingImage: 'assets/images/mdi_microwave.png', trailingImage: 'assets/images/Arrow 1.png')),
                      SizedBox(height: 10,),
                      CardWidget(firstText: 'Fix TV set', secondText: 'Living room', leadingImage: 'assets/images/mdi_television-classic.png', trailingImage: 'assets/images/Arrow 1.png',),
                     ],
                  ),
                )
                //
                //
                //
                //
                //
                //
                //




              ],
            ),
          ),
            // Positioned( right: -10,
            //   bottom: 5,
            //   child: Container(
            //     child: Image.asset(
            //       'assets/images/mainbg.png',
            //       height: 230,
            //       width: 508,
            //     ),
            //   ),)
    ]
        ),
      ),
    );
  }
}

