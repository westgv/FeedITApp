import 'package:flutter/material.dart';
import 'package:flutter_application_3/login/register.dart';
import 'package:flutter_application_3/paginas/camera.dart';
import 'package:flutter_application_3/paginas/dinoscreen.dart';
import 'package:flutter_application_3/login/login.dart';


import 'package:get/get.dart';




class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'FeedIT',
      theme: ThemeData.dark(),
      home:  DinoScreen(),

    );
  }
}
