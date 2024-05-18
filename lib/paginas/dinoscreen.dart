
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

class _DinoScreenState extends State<DinoScreen> with SingleTickerProviderStateMixin{
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.forward();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
            body: Stack(
              children: [ 
                Positioned.fill(
                child: Container(
                  width: screenWidth,
                  height: screenHeight,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('background_forest.png'),
                    fit: BoxFit.cover)
                  ),
                  ),
              ),
              Column(
              children: [
                // HEADER - MENU/SAO_CAMILO LOGO
                 HeaderJogo(
                  onMenuTap: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                 ),
                 const SizedBox(
                  height: 10,
                ),
                // NICKNAME FIELD
                 const NickNameField(),
                 const SizedBox(
                  height: 70,
                ),
                // DINOSSAUR IMAGE
                 const DinoImage(),
                 const SizedBox(
                  height: 60,
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
                        
                      
           ],
            ),
        
        
        );
      }
    );
    
  }
}
