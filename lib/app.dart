import 'package:flutter/material.dart';
import 'package:flutter_application_3/paginas/dinoscreen.dart';



import 'package:get/get.dart';

import 'widgets/login.bindings.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: LoginBindings(),
      debugShowCheckedModeBanner: false,
      title: 'FeedIT',
      theme: ThemeData.dark(),
      home:  DinoScreen(),

    );
  }
}
