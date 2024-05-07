import 'package:flutter/material.dart';
import '../constants/colors.dart';

BoxDecoration kHeaderDecoration = BoxDecoration(
  // gradient:  const LinearGradient(
  //   colors: [
  //     Colors.transparent,
  //     CustomColor.bgLight1,
  //   ],

  // ),
  color: Colors.transparent,
  boxShadow: const [
    BoxShadow(
      color: Color.fromARGB(255, 78, 82, 102),
      blurRadius: 2,
      blurStyle: BlurStyle.solid,
    ),
  ],
  borderRadius: BorderRadius.circular(100),
);

BoxDecoration kNickNameDecoration = BoxDecoration(
  color: CustomColor.yellowPrimary,
  boxShadow: const [
    BoxShadow(
      color: Color.fromARGB(255, 32, 32, 32),
    ),
  ],
  borderRadius: BorderRadius.circular(100),
);

BoxDecoration kLevels = BoxDecoration(
  color: Colors.transparent,
  borderRadius: BorderRadius.circular(100),
  
);
