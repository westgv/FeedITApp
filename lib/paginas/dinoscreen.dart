import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/styles/gradient_bg.dart';
import 'package:flutter_application_3/styles/level_home.dart';
import 'package:flutter_application_3/widgets/footer/footer.dart';
import 'package:flutter_application_3/widgets/tela_jogo_principal/dino.dart';
import 'package:flutter_application_3/widgets/tela_jogo_principal/header_jogo.dart';
import 'package:flutter_application_3/widgets/tela_jogo_principal/levels_bar.dart';
import 'package:flutter_application_3/widgets/tela_jogo_principal/levels_number.dart';
import 'package:flutter_application_3/widgets/tela_jogo_principal/nickname.dart';

import '../constants/colors.dart';
import '../styles/styles.dart';

class DinoScreen extends StatelessWidget {
  const DinoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const Footer(),
        body: Container(
      decoration: gradientBg,
      child: Column(
        children: [
          // HEADER - MENU/SAO_CAMILO LOGO
          const HeaderJogo(),
          const SizedBox(
            height: 20,
          ),
          // NICKNAME FIELD
          const NickNameField(),
          const SizedBox(
            height: 20,
          ),
          // DINOSSAUR IMAGE
          const DinoImage(),
          const SizedBox(
            height: 5,
          ),
          const LevelBarHome(),
          const SizedBox(
            height: 0,
          ),
          const LevelNumber(),
          const SizedBox(height: 10,),

        ],
      ),
    ));
  }
}
