import 'package:flutter/material.dart';
import 'package:readify/core/utils/assets.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 25),
      child: Row(
        children: [
          
          Image.asset(Assets_images.readifylogo, scale: 4),
      Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 30, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
