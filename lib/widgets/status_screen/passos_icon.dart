import 'package:flutter/material.dart';

class PassosIcon extends StatelessWidget {
  const PassosIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
            right: 50,
            top: 160,
            left: 50,
            child: Image.asset(
            'assets/passos.png',
            width: 50, 
            height: 50,
            ),
          );
  }
}