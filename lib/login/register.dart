import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'login.dart';
import 'forget_password.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Variáveis para armazenar os valores
  double energyPercent = 0.0;
  double strengthPercent = 0.0;
  double healthPercent = 0.0;
  double staminaPercent = 0.0;
  double happinessPercent = 0.0;

  // Método para atualizar os valores no Firestore
  Future<void> _updateValues(BuildContext context) async {
    try {
      String? uid = FirebaseAuth.instance.currentUser?.uid;
      if (uid != null) {
        await FirebaseFirestore.instance.collection('users').doc(uid).update({
          'energyPercent': energyPercent,
          'strengthPercent': strengthPercent,
          'healthPercent': healthPercent,
          'staminaPercent': staminaPercent,
          'happinessPercent': happinessPercent,
        });
      }
    } catch (e) {
      print('Error updating values: $e');
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Failed to update values: $e'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  void _registerUser(BuildContext context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      if (userCredential.user != null) {
        await FirebaseFirestore.instance.collection('users').doc(userCredential.user!.uid).set({
          'email': emailController.text,
          'senha': passwordController.text,
          // Adicione outros campos que deseja armazenar
        });

        // Atualize os valores no Firestore após o registro do usuário
        await _updateValues(context);

        Navigator.of(context).pop();
      } else {
        print('User is null');
      }
    } catch (e) {
      print('Error: $e');
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Registration Error'),
            content: Text('Failed to register: $e'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16,),
            ElevatedButton(
              onPressed: () => _registerUser(context),
              child: const Text('Register'),
            ),
            const SizedBox(height: 16,),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              }, 
              child: const Text('Already have an account? Login here'),
            ),
            const SizedBox(height: 16,),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgetPasswordPage()),
                );
              }, 
              child: const Text('Forgot your password?'),
            ),
          ],
        ),
      ),
    );
  }
}



