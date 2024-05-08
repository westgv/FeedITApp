
import 'package:flutter/material.dart';
import 'package:flutter_application_3/styles/gradient_bg.dart';

import 'package:flutter_application_3/widgets/tela_jogo_principal/dino.dart';
import 'package:flutter_application_3/widgets/tela_jogo_principal/header_jogo.dart';
import 'package:flutter_application_3/widgets/tela_jogo_principal/levels_bar.dart';
import 'package:flutter_application_3/widgets/tela_jogo_principal/levels_number.dart';
import 'package:flutter_application_3/widgets/tela_jogo_principal/nickname.dart';

import '../constants/colors.dart';
import '../styles/styles.dart';
import '../widgets/footer/footer.dart';
import 'new_page.dart';

class DinoScreen extends StatefulWidget {
  
  const DinoScreen({super.key});

  @override
  State<DinoScreen> createState() => _DinoScreenState();
  
}

class _DinoScreenState extends State<DinoScreen> {
  

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Scaffold(
        bottomNavigationBar: const Footer(),

        body: Container(
          
          width: screenWidth,
          height: screenHeight,
      decoration: gradientBg,
      child: const Column(
        children: [
          // HEADER - MENU/SAO_CAMILO LOGO
           HeaderJogo(),
           SizedBox(
            height: 30,
          ),
          // NICKNAME FIELD
           NickNameField(),
           SizedBox(
            height: 70,
          ),
          // DINOSSAUR IMAGE
           DinoImage(),
           SizedBox(
            height: 45,
          ),
          // LEVEL BAR
           LevelBarHome(),
           SizedBox(
            height: 0,
          ),
          // LEVEL BAR NUMBER
          const LevelNumber(),
          const SizedBox(height: 10,),
          
        ],
      ),
      
    ),
    
    
    );
    
  }
}
