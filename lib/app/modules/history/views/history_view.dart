import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../specialisticki/views/specialisticki_view.dart';
import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.blue[200],
      body: SafeArea(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: ListView(
                children: [
                  Text(
                    'Historija Vaših posjeta',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Table(
                      columnWidths: {2: FlexColumnWidth(0.2)},
                      children: [

  ]
                  ),

                  Divider(
                    thickness: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Datum', style: TextStyle(fontSize: 15),),
                      //Text('Doktor',style: TextStyle(fontSize: 15) ),
                      Text('Lokacija',style: TextStyle(fontSize: 15)),
                      Text('Vrsta', style: TextStyle(fontSize: 15),)

                    ],
                  ),
                  Divider(thickness: 2, color: Colors.deepPurple,),
                  SizedBox(height: 10,),
                  GestureDetector(
                    onTap: (){
                      Get.to(SpecialistickiView());
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('05/10/2022', style: TextStyle(fontSize: 15),),
                          //Text('Dr. Bakir Šuša', style: TextStyle(fontWeight: FontWeight.bold),),
                          Text('Grbavica 1',style: TextStyle(fontSize: 15)),
                          Container(
                              height: 30,
                              width: 30,
                              child: Image.network('https://cdn-icons-png.flaticon.com/512/2840/2840935.png'))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('15/09/2022', style: TextStyle(fontSize: 15),),
                        //Text('Dr. Harun Hadžo', style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('Grbavica 1',style: TextStyle(fontSize: 15)),
                        Container(
                            height: 25,
                            width: 25,
                            child: Image.network('https://cdn-icons-png.flaticon.com/512/1881/1881195.png'))
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('18/06/2022', style: TextStyle(fontSize: 15),),
                       // Text('Dr. Mirza Karić', style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('Grbavica 1',style: TextStyle(fontSize: 15)),
                        Container(
                            height: 25,
                            width: 25,
                            child: Image.network('https://cdn-icons-png.flaticon.com/512/3367/3367247.png'))
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('05/02/2022', style: TextStyle(fontSize: 15),),
                        //Text('Dr. Anes Piknja', style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('Grbavica 1',style: TextStyle(fontSize: 15)),
                        Container(
                            height: 30,
                            width: 30,
                            child: Image.network('https://cdn-icons-png.flaticon.com/512/2840/2840935.png'))
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('05/12/2021', style: TextStyle(fontSize: 15),),
                       // Text('Dr. Bakir Šuša', style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('Grbavica 1',style: TextStyle(fontSize: 15)),
                        Container(
                            height: 30,
                            width: 30,
                            child: Image.network('https://cdn-icons-png.flaticon.com/512/2840/2840935.png'))
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('15/09/2021', style: TextStyle(fontSize: 15),),
                       // Text('Dr. Harun Hadžo', style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('Grbavica 1',style: TextStyle(fontSize: 15)),
                        Container(
                            height: 25,
                            width: 25,
                            child: Image.network('https://cdn-icons-png.flaticon.com/512/1881/1881195.png'))
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('18/03/2021', style: TextStyle(fontSize: 15),),
                       // Text('Dr. Mirza Karić', style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('Grbavica 1',style: TextStyle(fontSize: 15)),
                        Container(
                            height: 25,
                            width: 25,
                            child: Image.network('https://cdn-icons-png.flaticon.com/512/3367/3367247.png'))
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('17/01/2021', style: TextStyle(fontSize: 15),),
                        //Text('Dr. Anes Piknja', style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('Grbavica 1',style: TextStyle(fontSize: 15)),
                        Container(
                            height: 30,
                            width: 30,
                            child: Image.network('https://cdn-icons-png.flaticon.com/512/2840/2840935.png'))
                      ],
                    ),
                  ),





                ],
              ),
            ),
          )),
    );
  }
}
