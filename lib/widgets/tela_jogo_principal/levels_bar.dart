import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants/colors.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class LevelBarHome extends StatefulWidget {
  const LevelBarHome({super.key});

  @override
  State<LevelBarHome> createState() => _LevelBarHomeState();
}

class _LevelBarHomeState extends State<LevelBarHome> {
  double progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    _getProgressValue();
  }

  Future<void> _getProgressValue() async {
    try {
      DocumentSnapshot snapshot = await FirebaseFirestore.instance.collection('progress').doc('yourDocumentId').get();
      if(snapshot.exists) {
        setState(() {
          progressValue = snapshot['value'] / 100;
        });
      }
    } catch (e) {
      print('Error fetching progress value: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      barRadius: const Radius.circular(50),
      lineHeight: 15,
      progressColor: const Color.fromARGB(255, 137, 0, 183),
      percent: 0.7,
      backgroundColor: CustomColor.scaffoldBg,
      width: 400,
      padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),  
      animation: true,
      animationDuration: 2000,
    );
  }
}
