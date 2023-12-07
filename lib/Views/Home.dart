// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:alea_verify_task/Controller/NumController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  //registering an instance of numcontroller
  final NumController controller = Get.put(NumController());

  @override
  Widget build(BuildContext context) {
    // creating variables for responsive ui
    Size screenSize = MediaQuery.of(context).size;
    double height = screenSize.height;
    double width = screenSize.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  'https://img.freepik.com/free-vector/gray-fluid-background-frame-vector_53876-168158.jpg?w=360&t=st=1701776609~exp=1701777209~hmac=228a8a876ad538d3f9fb304c6ac1aedfd387d5c1049883c0539c921b74450f3f',
                ),
                fit: BoxFit.cover)),
        child: Padding(
          padding: EdgeInsets.only(left: width * 0.03, right: width * 0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Text(
                  'A L E A   V E R I F Y',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: width * 0.065,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: height * 0.3,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(117, 33, 149, 243),
                    borderRadius: BorderRadius.circular(width * 0.07)),
                child: Obx(() => Center(
                      child: Text(
                        'Success count :${controller.successCount.value}',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: width * 0.055,
                              fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      print('checked random number');
                      controller.checkRandomNumber();
                    },
                    child: Container(
                      height: height * 0.2,
                      width: width * 0.45,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(117, 33, 149, 243),
                          borderRadius: BorderRadius.circular(width * 0.07)),
                      child: Center(
                          child: Text(
                        'Tap me',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: width * 0.055,
                              fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  Container(
                    height: height * 0.2,
                    width: width * 0.45,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(117, 33, 149, 243),
                        borderRadius: BorderRadius.circular(width * 0.07)),
                    child: Obx(() => Center(
                            child: Text(
                          'Random num: ${controller.randomNumber.value}',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: width * 0.055,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ))),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
