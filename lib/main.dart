import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:readify/features/splash/prescntion/views/splashview.dart';

void main() {
  runApp(const Readify
());
}

class Readify
 extends StatelessWidget {
  const Readify
({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SplashView(),
    );
  }
}

 