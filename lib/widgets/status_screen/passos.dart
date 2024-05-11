import 'package:flutter/material.dart';

import '../../styles/level_home.dart';
import '../../styles/styles.dart';

class ContaPassos extends StatelessWidget {
  const ContaPassos({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        
                        height: 20.0,
                        width: 200,
                        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        decoration: kLevels,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('1400m',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700
                                  ),
                                  textAlign: TextAlign.start,
                                  ),
                              Text('8763m',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700
                                  ),
                                  textAlign: TextAlign.end,
                                  ),
                              ],
                          ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [ Container(
                      height: 10.0,
                      width: 200,
                      margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                      decoration: kLevelHome,
                      child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(children: [],),
                      ),
                   ),
                   ],
                                   
                                   
                  ),
                  
                ],

               );

  }
}