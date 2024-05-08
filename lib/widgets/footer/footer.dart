import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:flutter_application_3/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return BottomNavigationBar(
      selectedItemColor: 
      CustomColor.yellowPrimary,
      unselectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w500,
      ),
      backgroundColor: Colors.red,
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