import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'register.dart';
import 'login.dart';

class ForgetPasswordPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  ForgetPasswordPage({super.key});

  void _resetPassword(BuildContext context) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail (
        email: emailController.text,
      );
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Reset Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: "Email",
              ),
            ),
            SizedBox(height: 16,),
            ElevatedButton(
              onPressed: () => _resetPassword(context), child: Text('Reset Password'),
            ),
            const SizedBox(height: 16,),
            TextButton(onPressed: () {
              Navigator.push(context,
               MaterialPageRoute(builder: (context) => LoginPage()));
            }, child: const Text("Already have an account? Login here"),),
            const SizedBox(height: 16,),
            TextButton(onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => RegisterPage())
              );
            }, child: const Text("You don`t have an account yet? "))
          ],
        ),
        ),


    );
  }
}