import 'package:flutter/material.dart';

import '../../styles/level_home.dart';

class LevelBarHome extends StatelessWidget {
  const LevelBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      decoration: kLevelHome,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [],
        ),
      ),
    );
  }
}
