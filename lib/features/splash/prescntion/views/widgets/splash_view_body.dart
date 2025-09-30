import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:readify/constantes.dart';
import 'package:readify/core/utils/assets.dart';
import 'package:readify/features/home/prescntino/views/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigetToHome();

  }

  void navigetToHome() {
    Future.delayed( const Duration(seconds: 3), () {
      Get.to(()=> HomeView(), transition: Transition.fade);
    });
  }

  void initSlidingAnimation() {
     animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    animation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.value = 0.5;
    animationController.forward();
  }
void dispose() {
    animationController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_Color,
      body: Center(
        child: SlideTransition(position:animation ,
          child: Image.asset(
            Assets_images.readifylogo,
            width: 200,
            height: 200,
            scale: 1,
          ),
        ),
      ),
    );
  }
}
