import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CounterController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }

  void reset() {
    if (count.value == 0) {
      Get.snackbar(
        'Value already 0',
        'The Value is 0 already',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: const Color.fromARGB(255, 255, 64, 26),
        colorText: Colors.white,
      );
    } else {
      count.value = 0;
    }
  }

  void decrement() {
    if (count.value > 0) {
      count--;
    } else {
      Get.snackbar(
        'Limit Reached',
        'Can\'t decrease more than 0',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
