
import 'package:flutter/material.dart';
import 'package:flutter_application_3/styles/gradient_bg.dart';
import 'package:flutter_application_3/widgets/drawer_mobile.dart';

import 'package:flutter_application_3/widgets/tela_jogo_principal/dino.dart';
import 'package:flutter_application_3/widgets/tela_jogo_principal/header_jogo.dart';
import 'package:flutter_application_3/widgets/tela_jogo_principal/levels_bar.dart';
import 'package:flutter_application_3/widgets/tela_jogo_principal/levels_number.dart';
import 'package:flutter_application_3/widgets/tela_jogo_principal/nickname.dart';

import '../constants/colors.dart';
import '../styles/styles.dart';
import '../widgets/footer/footer.dart';


class DinoScreen extends StatefulWidget {
  
  const DinoScreen({super.key});

  @override
  State<DinoScreen> createState() => _DinoScreenState();
}

class _DinoScreenState extends State<DinoScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return LayoutBuilder(
      builder: (context, contraints) {
        return Scaffold(
          key: scaffoldKey,
            bottomNavigationBar: const Footer(),
          drawer: const DrawerMobile(),
            body: Container(
              
              width: screenWidth,
              height: screenHeight,
          decoration: gradientBg,
          child:  Column(
            children: [
              // HEADER - MENU/SAO_CAMILO LOGO
               HeaderJogo(
                onMenuTap: () {
                  scaffoldKey.currentState?.openDrawer();
                },
               ),
               const SizedBox(
                height: 30,
              ),
              // NICKNAME FIELD
               const NickNameField(),
               const SizedBox(
                height: 70,
              ),
              // DINOSSAUR IMAGE
               const DinoImage(),
               const SizedBox(
                height: 45,
              ),
              // LEVEL BAR
               const LevelBarHome(),
               const SizedBox(
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
    );
    
  }
}
