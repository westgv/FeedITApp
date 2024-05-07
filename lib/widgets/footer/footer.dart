import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        Container(
          height: 80,
          decoration: BoxDecoration(
            color: CustomColor.yellowPrimary
          ),
        ),
        Container(
          height: 80,
          decoration: BoxDecoration(
            color: CustomColor.yellowPrimary
          ),
        ),
        Container(
          height: 80,
          decoration: BoxDecoration(
            color: CustomColor.yellowPrimary
          ),
        )
        
    ]);
  }
}