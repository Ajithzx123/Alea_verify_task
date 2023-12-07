// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NUmController extends GetxController {
  // making variable observable
  RxInt successCount = 0.obs;
  RxInt randomNumber = 0.obs;

  // creating function for random number equals to seconds
  void checkRandomNumber() {
    Random random = Random();
    randomNumber.value = random.nextInt(60);
    int currentSeconds = DateTime.now().second;

    //condition checking
    if (randomNumber.value == currentSeconds) {
      successCount.value++;
      Get.snackbar('Success', 'Success Totalcount:${successCount.value}',
          backgroundColor: const Color.fromARGB(117, 33, 149, 243),
          snackPosition: SnackPosition.TOP);
    } else {
      print('Try Again');
      // Get.snackbar(
      //     'Try Again', 'Try Again Total count still:${successCount.value}',
      //     backgroundColor: const Color.fromARGB(117, 33, 149, 243),
      //     snackPosition: SnackPosition.BOTTOM);
    }
  }
}
