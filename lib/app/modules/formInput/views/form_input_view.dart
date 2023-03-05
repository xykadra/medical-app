import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hackaton_test/app/modules/homePage/views/home_page_view.dart';
import 'package:hackaton_test/app/routes/app_pages.dart';
import 'package:lottie/lottie.dart';

import '../controllers/form_input_controller.dart';

class FormInputView extends GetView<FormInputController> {
  const FormInputView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          backgroundColor: Colors.blue[200],
          body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 150,
                        width: 150,
                        child: Lottie.network(
                            'https://assets7.lottiefiles.com/private_files/lf30_nsqfzxxx.json')),
                    SizedBox(
                      height: 25,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Vaša prijava je poslana!', style: TextStyle(fontSize: 17),),
                        Text(
                            'Očekujte povratne informacije uskoro', style: TextStyle(fontSize: 17))
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.offNamed(Routes.NAVBAR);
                      },
                      child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(

                            children: [
                              //Icon(Icons.person),
                              Text(
                                'Natrag',
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              )),
        );
  }
}
