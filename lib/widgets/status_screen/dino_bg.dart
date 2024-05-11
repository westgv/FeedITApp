import 'package:flutter/material.dart';

class DinoBg extends StatelessWidget {
  const DinoBg({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
            top: 0,
            right: -100,
            child: Image.asset(
              'assets/dino_fundo.png',
              width: 450, 
              height: 400,
            ),
          );
  }
}