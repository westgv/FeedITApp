

import 'package:flutter/material.dart';
 

import 'package:flutter_application_3/widgets/drawer_mobile.dart';
import 'package:flutter_application_3/widgets/footer/footer_status.dart';
import 'package:flutter_application_3/widgets/status_screen/dino_bg.dart';
import 'package:flutter_application_3/widgets/status_screen/dino_status.dart';
import 'package:flutter_application_3/widgets/status_screen/passos.dart';
import 'package:flutter_application_3/widgets/status_screen/passos_icon.dart';
import 'package:flutter_application_3/widgets/status_screen/status_progress.dart';


import '../widgets/tela_jogo_principal/header_jogo.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> with SingleTickerProviderStateMixin {
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
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          bottomNavigationBar: StatusFooter(), 
          backgroundColor: Colors.blue,
          drawer: DrawerMobile(),
          body: Stack(
            children: [
              const DinoBg(),
              
              FadeTransition(
                opacity: _animation,

                child: Container(
                width: screenWidth,
                height: screenHeight,
                
                child: Column(
                  children: [
                    HeaderJogo(
                      onMenuTap: () {
                        scaffoldKey.currentState?.openDrawer();
                      },
                     ),
                    const SizedBox(height: 5,),
                    const DinoStatus(),
                    const SizedBox(height: 5,),
                    const ContaPassos(),
                    const SizedBox(height: 10,),
                    const StatusProgress(),
                  ],
                  
                            
                            
                ),
                            ),
              ),
        
            const PassosIcon(),

            
            ],
            
          ),
        
        
        
        
        
        
        );
      }
    );
  }
}