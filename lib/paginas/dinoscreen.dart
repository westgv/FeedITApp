import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/widgets/tela_jogo_principal/header_jogo.dart';

import '../constants/colors.dart';
import '../styles/styles.dart';

class DinoScreen extends StatelessWidget {
  const DinoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: Column(
        children: [
          const HeaderJogo(),
          const SizedBox(height: 20,),
          Container(
          margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          decoration: kNickNameDecoration,
          child:  const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15),
            child: 
                 SizedBox(
                  width: 300,
                  child: TextField(
                    style: TextStyle(
                      color: CustomColor.scaffoldBg,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                    decoration: InputDecoration(
                      
                      suffixIcon: Icon(Icons.brush, color: CustomColor.scaffoldBg,),
                      
                      hintText: 'NickName',
                      hintMaxLines: 1,
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: CustomColor.scaffoldBg,
                        fontSize: 20,
                      ),
                    ),
                   textAlign: TextAlign.center, 
                   
                  ),
                )
              
            ),
          ),
          
      
      
        ],
      ) 
      
    );
    
  }
}
