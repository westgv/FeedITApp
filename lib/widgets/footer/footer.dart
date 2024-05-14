import 'package:flutter/material.dart';

import 'package:flutter_application_3/constants/colors.dart';

import '../../paginas/status.dart';

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
        items: [
            BottomNavigationBarItem(
              icon: IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  
                },
              ),
              label: "Vestiário",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: const Icon(Icons.info),
                onPressed: () {
                  Navigator.of(context).push(
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
                  return const Status();
                },
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  var begin = const Offset(0.0, 1.0);
                  var end = Offset.zero;
                  var curve = Curves.ease;
                  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                  var offsetAnimation = animation.drive(tween);
                  return SlideTransition(
                    position: offsetAnimation,
                    child: child,
                  );
                },
                transitionDuration: const Duration(milliseconds: 1000),
              ),
            );


                },
              ),




              label: "STATUS",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: const Icon(Icons.camera_alt_rounded),
                onPressed: () {
                  // Ação ao pressionar o ícone da câmera
                },
              ),
              label: "Câmera",
            ),
          ],
      );
  }
}