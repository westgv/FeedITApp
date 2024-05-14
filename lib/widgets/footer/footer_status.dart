import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants/colors.dart';
import 'package:flutter_application_3/paginas/dinoscreen.dart';

class StatusFooter extends StatelessWidget {
  const StatusFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: CustomColor.scaffoldBg,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: () {
            Navigator.of(context).pop(
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
                  return const DinoScreen();
                },
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  var begin = Offset.zero;
                  var end = const Offset(0.0, 1.0); 
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
          
          
          child: const Text('VOLTAR', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          ),
          ),
        ],)
      
      
    );
  }
}