import 'package:flutter/material.dart';
import 'package:readify/constantes.dart';
import 'package:readify/core/utils/assets.dart';
import 'package:readify/features/home/prescntino/views/widgets/home_appBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_Color,
      body: Column(children: [
        
        HomeAppbar()]),
    );
  }
}
