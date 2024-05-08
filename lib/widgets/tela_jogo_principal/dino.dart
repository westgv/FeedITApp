import 'package:flutter/material.dart';

class DinoImage extends StatelessWidget {
  const DinoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/dinossauro_verde.png'),
        ),
      ),
      height: 250,
    );
  }
}
