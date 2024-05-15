import 'package:flutter/material.dart';

class DinoStatus extends StatelessWidget {
  const DinoStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return  Hero(
          tag: 'dinostatus',
          child: Image.asset('assets/dinossauro_verde.png', scale: 2,)
          
            );
  }
}