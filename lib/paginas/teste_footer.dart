import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_3/styles/gradient_bg.dart';

import 'package:flutter_application_3/widgets/tela_jogo_principal/dino.dart';
import 'package:flutter_application_3/widgets/tela_jogo_principal/header_jogo.dart';
import 'package:flutter_application_3/widgets/tela_jogo_principal/levels_bar.dart';
import 'package:flutter_application_3/widgets/tela_jogo_principal/levels_number.dart';
import 'package:flutter_application_3/widgets/tela_jogo_principal/nickname.dart';




class TesteFooter extends StatelessWidget {
  
  const TesteFooter({super.key});
  
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Scaffold(
        body: FooterView(
          children: [
            Container(
          width: screenWidth,
          height: screenHeight - 80,
              decoration: gradientBg,
              child: Column(
        children: [
          // HEADER - MENU/SAO_CAMILO LOGO
          const HeaderJogo(),
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
            height: 5,
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
          ],
           footer:  Footer(
            child:  Padding (
              padding: const EdgeInsets. all ( 5.0 ) ,
              child:  Column (
                crossAxisAlignment: CrossAxisAlignment. center ,
                mainAxisAlignment: MainAxisAlignment. spaceAround ,
                children: <Widget> [
                   Center (
                    child: Row (
                      mainAxisAlignment: MainAxisAlignment. spaceEvenly ,
                      children: <Widget> [
                        Container (
                          height: 45.0 ,
                          width: 45.0 ,
                          child: Center (
                            child: Card (
                              elevation: 5.0 ,
                              shape: RoundedRectangleBorder (
                                borderRadius: BorderRadius. circular ( 25.0 ) , // half of height and width of Image
                              ) ,
                              child: IconButton (
                                icon: const Icon ( Icons. audiotrack , size: 20.0 , ) ,
                                color: Color ( 0xFF162A49 ) ,
                                onPressed: () {} , 
                              ) ,
                            ) ,
                          )
                        ) ,
                        Container (
                          height: 45.0 ,
                          width: 45.0 ,
                          child: Center (
                            child: Card (
                              elevation: 5.0 ,
                              shape: RoundedRectangleBorder (
                                borderRadius: BorderRadius. circular ( 25.0 ) , // half of height and width of Image
                              ) ,
                              child: IconButton (
                                icon: const Icon ( Icons.fingerprint , size: 20.0 , ) ,
                                color: Color ( 0xFF162A49 ) ,
                                onPressed: () {} , 
                              ) ,
                            ) ,
                          )
                        ) ,
                        Container (
                          height: 45.0 ,
                          width: 45.0 ,
                          child: Center (
                            child: Card (
                              elevation: 5.0 ,
                              shape: RoundedRectangleBorder (
                                borderRadius: BorderRadius. circular ( 25.0 ) , // half of height and width of Image
                              ) ,
                              child: IconButton (
                                icon: const Icon ( Icons.call , size: 20.0 , ) ,
                                color: Color ( 0xFF162A49 ) ,
                                onPressed: () {} , 
                              ) ,
                            ) ,
                          )
                        ) ,
                      ] ,
                    ) ,
                  ) ,
                  
                ],
              ) ,
            ),
            ),
              ),
    
    );
  }
}
