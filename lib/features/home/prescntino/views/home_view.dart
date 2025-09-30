import 'package:flutter/material.dart';
import 'package:readify/constantes.dart';
import 'package:readify/core/utils/assets.dart';
import 'package:readify/features/home/prescntino/views/widgets/home_appBar.dart';
import 'package:readify/features/home/prescntino/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  String get routeName => 'home_view';
  @override
  Widget build(BuildContext context) {
    return HomeViewBody();
  }


}
