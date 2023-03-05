import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hackaton_test/app/modules/auth/views/auth_view.dart';

class ForgotIDView extends GetView {
  const ForgotIDView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 224, 224),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Vaš ID se nalazi ovde', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24))),
          Container(
              height: 300,
              width: 300,
              child: Image.asset('lib/assets/zdravstvena.png')),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => AuthView()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(0)),
                // ignore: prefer_const_constructors
                child: Center(
                  // ignore: prefer_const_constructors
                    child: Text('Povratak na prijavu',
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20))),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
