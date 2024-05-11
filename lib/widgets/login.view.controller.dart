import 'package:flutter/material.dart';
import 'package:flutter_application_3/paginas/dinoscreen.dart';
import 'package:get/get.dart';



class LoginController extends GetxController {
  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();
  // isso e no BD
  static const email = 'admin@admin.com';
  static const password = 'admin';

  void tryToLogin() {
    switch(emailInput.text){
      case email:
        checkPassword();
        break;
      case '':
        printError('Insira um email');
        break;
      default:
        printError('Email nao encontrado');
    }
    
  }

  void checkPassword() {
    print('Login');

    switch(passwordInput.text){
      case password:
        login();
        break;
      case '':
        printError('Insira uma senha');
      default:
      printError('senha incorreta');
    }
  }
  void login(){
    Get.to(DinoScreen());
  }
  void printError(String error){
    print(error);
  }
}
