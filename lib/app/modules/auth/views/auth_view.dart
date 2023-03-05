import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hackaton_test/app/modules/auth/views/forgot_i_d_view.dart';
import 'package:hackaton_test/app/modules/homePage/views/home_page_view.dart';
import 'package:hackaton_test/app/modules/navbar/controllers/navbar_controller.dart';
import 'package:lottie/lottie.dart';

import '../../navbar/views/navbar_view.dart';
import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
Get.put(NavbarController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Lottie.network(
                      'https://assets6.lottiefiles.com/packages/lf20_acxgzi0c.json'),
                ),
                Column(

                  children: [
                    Text(
                      'Dobrodošli',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                    ),
                    Text(
                      'Unesite Vaš ID',
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    padding: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: const TextField(

                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'ID',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Padding(padding: EdgeInsets.symmetric(horizontal: 40.0),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap:(){
                            Get.to(ForgotIDView());
                  },
                          child: Text('Nemate ID?', style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 14, 55, 101), fontWeight: FontWeight.bold), ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: GestureDetector(
                    onTap: (){
                      Get.to(HomePageView());
                    },
                    child: GestureDetector(
                      onTap: (){
                        Get.to(NavbarView());
                      },
                      child: Container(

                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                            child: Text(
                              'Prijavite se',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            )),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );

  }
}
