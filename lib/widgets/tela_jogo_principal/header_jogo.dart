import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants/colors.dart';

import '../../styles/styles.dart';

class HeaderJogo extends StatelessWidget {
  const HeaderJogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 50.0,
            margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            decoration: kHeaderDecoration,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, 
                  icon: const Icon(Icons.menu, color: CustomColor.scaffoldBg, ),
                  ),
                  
                  Image.asset('assets/sao_camilo.png'),
                ],
              ),
            ),
          );
  }
}