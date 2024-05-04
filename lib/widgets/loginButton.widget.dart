import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login.view.controller.dart';

class LoginButton extends GetView<LoginController> {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {controller.tryToLogin();},
      child: const Text('Entrar'),
    );
  }
}