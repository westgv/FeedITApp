
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:flutter_application_3/firebase/firebase_class.dart';




class StatusProgress extends StatefulWidget {
  const StatusProgress({super.key});

  @override
  State<StatusProgress> createState() => _StatusProgressState();
}

class _StatusProgressState extends State<StatusProgress> {
double energyValue = 0.0;


void _getEnergyValue() async {
  // Acessa a coleção de usuários no Firestore e obtém o documento do usuário atual
  DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
      .collection('users')
      .doc('ID_DO_USUARIO') // Substitua 'ID_DO_USUARIO' pelo ID do usuário atual
      .get();

  // Verifica se o documento existe e se contém o campo 'energyPercent'
  if (userSnapshot.exists && userSnapshot.data() != null) {
    Map<String, dynamic>? userData = userSnapshot.data() as Map<String, dynamic>?; // Convertendo para Map<String, dynamic>?
    if (userData != null && userData.containsKey('energyPercent')) {
      // Obtém o valor de 'energyPercent' do documento
      double energyPercent = userData['energyPercent'];

      // Atualiza o estado da variável energyValue com o valor obtido
      setState(() {
        energyValue = energyPercent;
      });
    } else {
      // Se o documento não contiver o campo 'energyPercent', mostra uma mensagem de erro
      print('Erro: Campo energyPercent não encontrado no documento do usuário.');
    }
  } else {
    // Se o documento não existir, mostra uma mensagem de erro
    print('Erro: Documento do usuário não encontrado.');
  }
}


  
  

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: const Color(0xD5F9EBE0),
            border: Border.all(color: Colors.black, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(50)),
        height: 330,
        width: 280,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                'STATUS',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
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
                          radius: 35.0,
                          lineWidth: 7.0,
                          percent: energyValue / 100,
                          center: const Icon(
                            Icons.flash_on,
                            color: Colors.yellow,
                            size: 40,
                            shadows: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 5,
                              )
                            ],
                          ),
                          progressColor: Colors.red,
                        ),

                        const Padding(padding: EdgeInsets.only(right: 15)),
                        // STRENGTH
                        CircularPercentIndicator(
                          animation: true,
                          animationDuration: 2000,
                          radius: 35.0,
                          lineWidth: 7.0,
                          percent: 0.10,
                          center: const Icon(
                            Icons.fitness_center,
                            color: Colors.black,
                            size: 40,
                            shadows: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 5,
                              )
                            ],
                          ),
                          progressColor: Colors.red,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // HEALTHY
                        CircularPercentIndicator(
                          animation: true,
                          animationDuration: 2000,
                          radius: 35.0,
                          lineWidth: 7.0,
                          percent: 0.10,
                          center: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 40,
                            shadows: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 5,
                              )
                            ],
                          ),
                          progressColor: Colors.red,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // RESISTANCE
                        CircularPercentIndicator(
                          animation: true,
                          animationDuration: 2000,
                          radius: 35.0,
                          lineWidth: 7.0,
                          percent: 0.10,
                          center: const Icon(
                            Icons.shield,
                            color: Colors.black,
                            size: 40,
                            shadows: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 5,
                              )
                            ],
                          ),
                          progressColor: Colors.red,
                        ),

                        const Padding(padding: EdgeInsets.only(right: 15)),
                        // HAPINESS
                        CircularPercentIndicator(
                          animation: true,
                          animationDuration: 2000,
                          radius: 35.0,
                          lineWidth: 7.0,
                          percent: 0.10,
                          center: const Icon(
                            Icons.sentiment_very_satisfied_outlined,
                            color: Colors.yellow,
                            size: 40.0,
                            shadows: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 5,
                              )
                            ],
                          ),
                          progressColor: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
