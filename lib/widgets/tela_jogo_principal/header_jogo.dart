import 'package:flutter/material.dart';

import '../../styles/styles.dart';

class HeaderJogo extends StatelessWidget {
  const HeaderJogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 50.0,
            margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            decoration: kHeaderDecoration,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, 
                  icon: const Icon(Icons.menu),
                  ),
                  
                  const Icon(Icons.star),
                ],
              ),
            ),
          );
  }
}