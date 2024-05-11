import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/styles/gradient_bg.dart';
import 'package:flutter_application_3/widgets/footer/footer_status.dart';
import 'package:flutter_application_3/widgets/status_screen/dino_bg.dart';
import 'package:flutter_application_3/widgets/status_screen/dino_status.dart';
import 'package:flutter_application_3/widgets/status_screen/passos.dart';
import 'package:flutter_application_3/widgets/status_screen/passos_icon.dart';
import 'package:flutter_application_3/widgets/tela_jogo_principal/levels_bar.dart';

import '../styles/level_home.dart';
import '../styles/styles.dart';
import '../widgets/tela_jogo_principal/header_jogo.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Scaffold(
      bottomNavigationBar: StatusFooter(), 
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          const DinoBg(),
          
          Container(
          width: screenWidth,
          height: screenHeight,
          
          child: Column(
            children: [
              const HeaderJogo(),
              const SizedBox(height: 10,),
              const DinoStatus(),
              const SizedBox(height: 10,),
              const ContaPassos(),
              const SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(214, 249, 235, 224),
                  border: Border.all(color: Colors.black,style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(50)
                ),
                height: 400,
                width: 350,
                child: const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text('STATUS', style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.flash_on, color: Colors.yellow, size: 50,shadows: [Shadow(color: Colors.black)],),
                          
                          Text('+10', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.green,
                          ),)
                        ],),
                      
                    ],
                    ),
                )

              ),
            ],
            
        
        
          ),
        ),

        const PassosIcon(),
        ],
        
      ),






    );
  }
}