import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/login/forget_password.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _loginUser(BuildContext context) async {
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, 
      password: passwordController.text);
    } catch(e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
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
            ElevatedButton(onPressed: () => _loginUser(context),
             child: const Text('Login'),
             ),
            const SizedBox(height: 16,),
            TextButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgetPasswordPage()),
              );
            }, child: const Text('You don`t have an account yet? ')),
            const SizedBox(height: 16,),
            TextButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgetPasswordPage()),
              );
            },
             child: const Text('Forget your password?'),)
          ],
        ),
        
        
        ),
    );
  }
}