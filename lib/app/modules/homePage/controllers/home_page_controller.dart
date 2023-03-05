import 'dart:math';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePageController extends GetxController {
  //TODO: Implement HomePageController

  var displayFront = true.obs;
  var flipXAxis = true.obs;


  // Widget buildFlipAnimation() {
  //   return GestureDetector(
  //     onTap: () {
  //       displayFront.value = !displayFront.value;
  //     },
  //     child: AnimatedSwitcher(
  //       duration: Duration(milliseconds: 900),
  //       child: displayFront.value  ? buildFront() : buildRear(),
  //     ),
  //   );
  // }
  Widget buildFlipAnimation() {
    return GestureDetector(
      onTap:() {
        displayFront.value = !displayFront.value;
      },
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 1000),
        transitionBuilder: transitionBuilder,
        layoutBuilder: (widget, list) => Stack(children: [widget!, ...list]),
        child: displayFront.value ? buildFront() : buildRear(),
        switchInCurve: Curves.easeIn,
        switchOutCurve: Curves.easeOut,
      ),
    );
  }

  Widget buildFront() {
    return buildLayout(
      key: ValueKey(true),

    );
  }

  Widget buildRear() {
    return Container(
      height: 150,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Center(
            child: Text(
              'Bitni brojevi',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.phone),
                    Text(
                      'Ambulanta: 061051253',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                   Spacer(),
                   // SizedBox(width: 20,),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Color(0xFF0096c7),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Center(child: Text('Pozovi', style: TextStyle(color: Colors.white),),),
                    )
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.phone),
                    Text(
                      'Hitna pomoć: 124',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    //SizedBox(width: 95,),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Color(0xFF0096c7),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Center(child: Text('Pozovi',style: TextStyle(color: Colors.white),)),
                    )
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget buildLayout({required Key key}) {
    return Container(
      key: key,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      height: 150,
      child: Row(
        children: [
          Container(
              width:140,

              child: Lottie.asset(
                  'lib/animations/hospital.json')),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Row(
                children: [
                  Text(
                    'Vaši podaci',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.arrow_downward)
                ],
              ),
              SizedBox(height: 10,),

              Text(
                'Ambulanta: Grbavica 1',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                'OTVORENO',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text('Više informacija')
            ],
          ),
        ],
      ),
    );
  }
  Widget transitionBuilder(Widget widget, Animation<double> animation) {
    final rotateAnim = Tween(begin: pi, end: 0.0).animate(animation);
    return AnimatedBuilder(
      animation: rotateAnim,
      child: widget,
      builder: (context, widget) {
        final isUnder = (ValueKey(displayFront.value) != widget?.key);
        final value = isUnder ? min(rotateAnim.value, pi / 2) : rotateAnim.value;
        return Transform(
          transform: Matrix4.rotationY(value),
          child: widget,
          alignment: Alignment.center,
        );
      },
    );
  }



  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
