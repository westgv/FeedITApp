import 'package:flutter/material.dart';
import 'package:flutter_application_3/paginas/dinoscreen.dart';
import 'package:flutter_application_3/paginas/dinostatus.dart';
import 'package:flutter_application_3/paginas/login.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FeedIT',
      home: const Login(),
      routes: {
        '/home': (context) => const Login(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}
