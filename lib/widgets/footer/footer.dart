import 'package:flutter/material.dart';

import 'package:flutter_application_3/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: 
      CustomColor.yellowPrimary,
      unselectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
      ),
      backgroundColor: CustomColor.scaffoldBg,
				currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Vestiário"
              
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: "STATUS"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_rounded),
              label: "Câmera"
          ),
        ],
      );
  }
}