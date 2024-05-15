import 'package:flutter/material.dart';

import '../../paginas/status.dart';

class DinoImage extends StatelessWidget {
  const DinoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Status()),
        );
      },
      child: Hero(
        tag: 'dino' ,
        child: Image.asset('assets/dinossauro_verde.png'),
        transitionOnUserGestures: true,
        
      ),
    );
  }
}
