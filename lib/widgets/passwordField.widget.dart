import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login.view.controller.dart';

class PasswordField extends GetView<LoginController> {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller: controller.passwordInput,
      decoration: const InputDecoration(
        hintText: 'Senha'
      ),
    );
  }
}