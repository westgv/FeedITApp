import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants/colors.dart';
import 'package:flutter_application_3/login/forget_password.dart';
import 'package:flutter_application_3/login/register.dart';
import 'package:flutter_application_3/paginas/dinoscreen.dart';
import 'package:google_fonts/google_fonts.dart';

//Given eu tenho dois tipos de dados: nome e senha 
class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //When eu verifico no banco
  LoginPage({super.key});

  
  // Then o resultado deve ser Login com sucesso na mensagem do aplicativo
  // Then o resultado deve ser Login mal sucedido na mensagem do aplicativo
  void _loginUser(BuildContext context) async {
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, 
      password: passwordController.text);
    } catch(e) {
      print('Error: $e');
    }
    Navigator.of(context).push(PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
                  return const DinoScreen();
                },
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  var begin = const Offset(0.0, 1.0);
                  var end = Offset.zero;
                  var curve = Curves.ease;
                  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                  var offsetAnimation = animation.drive(tween);
                  return SlideTransition(
                    position: offsetAnimation,
                    child: child,
                  );
                },
                transitionDuration: const Duration(milliseconds: 1000),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Scaffold(
      
      
      body: Stack(
        
        children: [
          Positioned.fill(
            child: Container(
                  width: screenWidth,
                  height: screenHeight,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('background_forest.png'),
                    fit: BoxFit.cover)
                  ),
                  ),
          ),


          Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            
            children: [
               Padding(
                 padding: const EdgeInsets.only(top: 45.0),
                 child: Text('FeedIT', style: GoogleFonts.zenDots(fontSize: 40,
                 color: Colors.white),
                               ),
               ),
              
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 200, 20, 10),
                child: TextField(
                  style: const TextStyle(color: CustomColor.scaffoldBg),
                  controller: emailController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    filled: true,
                    focusColor: CustomColor.scaffoldBg,
                    fillColor: Color.fromARGB(61, 255, 255, 255),
                    
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: CustomColor.scaffoldBg
                    ),
                    suffixIcon: Icon(Icons.email_outlined, color: CustomColor.scaffoldBg,),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                    
                  ),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                child: TextField(
                  
                  controller: passwordController,
                  decoration: const InputDecoration(
                    filled: true,
                    focusColor: CustomColor.scaffoldBg,
                    fillColor: Color.fromARGB(61, 255, 255, 255),
                    contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: CustomColor.scaffoldBg
                    ), 
                    suffixIcon: Icon(Icons.password, color: CustomColor.scaffoldBg,),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 16,),
              ElevatedButton(onPressed: () => _loginUser(context),
               child: const Text('Login'),
               ),
              const SizedBox(height: 16,),
              TextButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              }, child: const Text('You don`t have an account yet? ', style: TextStyle(color: CustomColor.scaffoldBg),)),
              const SizedBox(height: 12,),
              TextButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgetPasswordPage()),
                );
              },
               child: const Text('Forget your password?', style: TextStyle(color: CustomColor.scaffoldBg),),)
            ],
          ),
          
          
          ),
        ] ),
    );
  }
}