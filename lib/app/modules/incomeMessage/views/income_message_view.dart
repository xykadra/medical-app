import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/income_message_controller.dart';

class IncomeMessageView extends GetView<IncomeMessageController> {
  const IncomeMessageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Obavijesti',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    // Container(
                    //   padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    //   decoration: BoxDecoration(
                    //       color: Colors.red,
                    //       borderRadius: BorderRadius.circular(6)),
                    //   child: Text(
                    //     '3',
                    //     style: TextStyle(color: Colors.white, fontSize: 20),
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 15,
                          color: Colors.grey,
                          offset: Offset(0,10),
                          spreadRadius: -5
                      ),
                      // BoxShadow(
                      //   offset: Offset(1, 2),
                      //   blurRadius: 5,
                      //   spreadRadius: 2,
                      //   color: Colors.green,
                      //   // inset: true,
                      // ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.grey[700],
                              borderRadius: BorderRadius.circular(12)),
                          child: Icon(
                            Icons.alarm_add,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 25,
                      ),
                      Expanded(
                        child: Container(
                          // color: Colors.blue,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Vaš termin je odobren',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      'prije 2h',
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),

                              Row(children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_today,
                                        size: 20,
                                      ),
                                      Text(
                                        '20 Nov 2020',
                                        style:
                                        TextStyle(fontWeight: FontWeight.bold,fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.alarm,
                                        size: 20,
                                      ),
                                      Text(
                                        '12:30 - 13:00',
                                        style:
                                        TextStyle(fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 15,
                          color: Colors.black,
                          offset: Offset(0,10),
                          spreadRadius: -10
                      ),],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.grey[700],
                              borderRadius: BorderRadius.circular(12)),
                          child: Icon(
                            Icons.document_scanner,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 25,
                      ),
                      Expanded(
                        child: Container(
                          // color: Colors.blue,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Vaši nalazi su gotovi',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      'prije 20h',
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(12)),
                                      child: Text(
                                        'Pogledaj nalaze',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(

                    color: Color.fromARGB(255, 238, 235, 235),
                    borderRadius: BorderRadius.circular(12),
                    //border:Border.all(color: Color.fromARGB(255, 192, 186, 186))
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.blue[200],
                              borderRadius: BorderRadius.circular(12)),
                          child: Icon(
                            Icons.mail,
                            color: Colors.black,
                          )),
                      SizedBox(
                        width: 25,
                      ),
                      Expanded(
                        child: Container(
                          // color: Colors.blue,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Uputnica je gotova',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      'prije 5 dana',
                                      style: TextStyle(color: Colors.grey[700]),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(12)),
                                      child: Text(
                                        'Pogledaj uputnicu',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                //Ovde
              ],
            ),
          )),
    );
  }
}
