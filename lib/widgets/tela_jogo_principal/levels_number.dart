import 'package:flutter/material.dart';

import '../../styles/styles.dart';

class LevelNumber extends StatelessWidget {
  const LevelNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 20.0,
            width: 400,
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 5),
            decoration: kLevels,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Lvl 1',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                    ),
                    textAlign: TextAlign.start,
                    ),
                Text('Lvl 2',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                    ),
                    textAlign: TextAlign.end,
                    ),
              ],
            ),
          );
  }
}