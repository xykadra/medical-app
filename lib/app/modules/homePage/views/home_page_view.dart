import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hackaton_test/app/modules/ZatraziPregled/views/zatrazi_pregled_view.dart';
import 'package:hackaton_test/app/modules/auth/views/auth_view.dart';
import 'package:hackaton_test/app/modules/history/views/history_view.dart';
import 'package:hackaton_test/app/modules/settings/views/settings_view.dart';
import 'package:lottie/lottie.dart';

import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageController());
    return Scaffold(
      appBar: AppBar(

        toolbarHeight: 30,
        backgroundColor: Colors.transparent,
        elevation: 0,

      ),
      backgroundColor: Colors.blue[200],
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          'Pozdrav,',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Adnan',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        )
                      ],
                    ),

                  ],
                ),
                SizedBox(
                  height: 20,
                ),


                Obx(() =>  Container(

                    child: controller.buildFlipAnimation(),
                  ),
                ),
                SizedBox(height: 15,),
                GestureDetector(
                  onTap: (){
                    Get.to(ZatraziPregledView());
                  },
                  child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ZATRAŽITE PREGLED',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Spacer(),
                            Icon(
                              Icons.local_hospital,
                              color: Colors.white,
                              size: 40,
                            )
                          ],
                        ),
                      )),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 140,
                  decoration: BoxDecoration(
                    //color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                          'https://d16qt3wv6xm098.cloudfront.net/HhpMGLRMSwOroOHIoY0ovnAVRPOJjqKv/_.jpg')),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dr. Anes Demirović',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      'Stomatolog',
                                      style: TextStyle(color: Colors.grey[600]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text('Termin:'),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal:8, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.calendar_today, size: 20,),
                                      Text(
                                        '22 Dec 2022',
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal:8, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.alarm, size: 20,),
                                      Text(
                                        '12:30 - 13:00',
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network('https://i.imgur.com/d6OzSKz.jpg'),),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dr. Maida Kadrić',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      'Kardiolog',
                                      style: TextStyle(color: Colors.grey[600]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Text('Termin:'),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal:8, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.calendar_today, size: 20,),
                                      Text(
                                        '20 Nov 2022',
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal:8, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.alarm, size: 20,),
                                      Text(
                                        '12:30 - 13:00',
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 15,),
                GestureDetector(
                  onTap: (){
                    Get.to(HistoryView());
                  },
                  child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFF0096c7),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'HISTORIJA PREGLEDA',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Spacer(),
                            Icon(
                              Icons.history,
                              color: Colors.white,
                              size: 40,
                            )
                          ],
                        ),
                      )),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }


}
