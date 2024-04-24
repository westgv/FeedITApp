import 'package:flutter/material.dart';
import 'package:flutter_application_3/paginas/dinoscreen.dart';
import 'package:flutter_application_3/paginas/dinostatus.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation and Stateful',
      home: const HomePage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}
