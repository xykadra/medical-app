import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/specialisticki_controller.dart';

class SpecialistickiView extends GetView<SpecialistickiController> {
  const SpecialistickiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
          toolbarHeight: 30,
      ),
      backgroundColor: Colors.blue[200],
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: ClipRRect(

                          borderRadius: BorderRadius.circular(60),
                          child: Image.network('https://i.imgur.com/d6OzSKz.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Ime i prezime: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text(
                                'Dr. Maida Kadrić',
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                          //SizedBox(height: 10,),
                          Row(
                            children: [
                              Text(
                                'Struka: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text(
                                'Stomatolog',
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Datum pregleda: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text(
                                '05/10/2022',
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(8),

                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 10,),
                        Center(
                          child: Text(
                            'Specijalistički nalaz',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Dijagnoza:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Ca palati molti I.sin.'),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Anamneza I status:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Upućena od oralnog hir. Unazad godinu dana promjena na mekom nepcu lijevo. Pacijentica unazad tri mjeseca osjeća bolove prilikom jela i gutanja. Inače zdrava, alergije na lijekove negira. Dugogodišnji pušač, alkohol prigodno.'),
                        SizedBox(height: 15,),
                        Text('Zaključak: ', style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text('Molim učiniti MSCT usne šupljine, vrata i toraksa ovdje 1.2. kod dr.Kadrić s uputnicom.'),
                        SizedBox(height: 25,),


                      ]),
                ),
                SizedBox(height: 15,),
                Container(

                  padding: EdgeInsets.all(10),
                  //height: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [


                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text('Datum izdavanja nalaza: 05/10/2022 12:42')
              ]
            ),
                  ]
          ),
                )
              ],
            ),
          ),

    ),


    );
  }
}
