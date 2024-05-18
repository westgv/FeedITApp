import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class StatusProgress extends StatefulWidget {
  const StatusProgress({super.key});

  @override
  State<StatusProgress> createState() => _StatusProgressState();
}

class _StatusProgressState extends State<StatusProgress> {
  double energyValue = 0.0;
  double strengthValue = 0.0;
  double healthyValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
              color: const Color(0xD5F9EBE0),
              border: Border.all(color: Colors.black,style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(50)
            ),
            height: 350,
            width: 350,
            child:  Padding(
              padding:  EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text('STATUS', style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                  ),
                  const SizedBox(height: 10,),
                  Padding(
                    
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      
                      children: [
                        Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // ENERGY
                            CircularPercentIndicator(
                              animation: true,
                              animationDuration: 2000,
                              radius: 40.0,
                              lineWidth: 7.0,
                              percent: 0.10,
                              center: const Icon(Icons.flash_on, color: Colors.yellow, size: 50, shadows: [BoxShadow(
                                color: Colors.black,
                                blurRadius: 5,
                              )],),
                              progressColor: Colors.red,
                            ), 

                            const Padding(padding: EdgeInsets.only(right: 15)),
                            // STRENGTH
                            CircularPercentIndicator(
                              animation: true,
                              animationDuration: 2000,
                              radius: 40.0,
                              lineWidth: 7.0,
                              percent: 0.10,
                              center: const Icon(Icons.fitness_center, color: Colors.black, size: 50, shadows: [BoxShadow(
                                color: Colors.black,
                                blurRadius: 5,
                              )],),
                              progressColor: Colors.red,
                            ),
                          ],),
                          const SizedBox(height: 5,),

                           Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // HEALTHY
                            CircularPercentIndicator(
                              animation: true,
                              animationDuration: 2000,
                              radius: 40.0,
                              lineWidth: 7.0,
                              percent: 0.10,
                              center: const Icon(Icons.favorite, color: Colors.red, size: 50, shadows: [BoxShadow(
                                color: Colors.black,
                                blurRadius: 5,
                              )],),
                              progressColor: Colors.red,
                            ), 

                            
                          ],),

                          const SizedBox(height: 5,),

                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // RESISTANCE
                            CircularPercentIndicator(
                              animation: true,
                              animationDuration: 2000,
                              radius: 40.0,
                              lineWidth: 7.0,
                              percent: 0.10,
                              center: const Icon(Icons.shield, color: Colors.black, size: 50, shadows: [BoxShadow(
                                color: Colors.black,
                                blurRadius: 5,
                              )],),
                              progressColor: Colors.red,
                            ), 

                            const Padding(padding: EdgeInsets.only(right: 15)),
                            // HAPINESS
                            CircularPercentIndicator(
                              animation: true,
                              animationDuration: 2000,
                              radius: 40.0,
                              lineWidth: 7.0,
                              percent: 0.10,
                              center: const Icon(Icons.sentiment_very_satisfied_outlined, color: Colors.yellow, size: 50, shadows: [BoxShadow(
                                color: Colors.black,
                                blurRadius: 5,
                              )],),
                              progressColor: Colors.red,
                            ),
                          ],),

                          

                         
                      ],
                    ),
                  ),
                  
                ],
                ),
            )

          );
  }
}