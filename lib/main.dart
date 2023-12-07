// ignore_for_file: prefer_const_constructors

import 'package:alea_verify_task/Views/Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false, 
        home: HomeScreen()
    );
  }
}
